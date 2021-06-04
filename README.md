# JellyfinAPI

This is an api generated from a OpenAPI 3.0 spec with [SwagGen](https://github.com/yonaskolb/SwagGen)

## Operation

Each operation lives under the `JellyfinAPI` namespace and within an optional tag: `JellyfinAPI(.tagName).operationId`. If an operation doesn't have an operationId one will be generated from the path and method.

Each operation has a nested `Request` and a `Response`, as well as a static `service` property

#### Service

This is the struct that contains the static information about an operation including it's id, tag, method, pre-modified path, and authorization requirements. It has a generic `ResponseType` type which maps to the `Response` type.
You shouldn't really need to interact with this service type.

#### Request

Each request is a subclass of `APIRequest` and has an `init` with a body param if it has a body, and a `options` struct for other url and path parameters. There is also a convenience init for passing parameters directly.
The `options` and `body` structs are both mutable so they can be modified before actually sending the request.

#### Response

The response is an enum of all the possible responses the request can return. it also contains getters for the `statusCode`, whether it was `successful`, and the actual decoded optional `success` response. If the operation only has one type of failure type there is also an optional `failure` type.

## Model
Models that are sent and returned from the API are mutable classes. Each model is `Equatable` and `Codable`.

`Required` properties are non optional and non-required are optional

All properties can be passed into the initializer, with `required` properties being mandatory.

If a model has `additionalProperties` it will have a subscript to access these by string

## APIClient
The `APIClient` is used to encode, authorize, send, monitor, and decode the requests. There is a `APIClient.default` that uses the default `baseURL` otherwise a custom one can be initialized:

```swift
public init(baseURL: String, sessionManager: SessionManager = .default, defaultHeaders: [String: String] = [:], behaviours: [RequestBehaviour] = [])
```

#### APIClient properties

- `baseURL`: The base url that every request `path` will be appended to
- `behaviours`: A list of [Request Behaviours](#requestbehaviour) to add to every request
- `sessionManager`: An `Alamofire.SessionManager` that can be customized
- `defaultHeaders`: Headers that will be applied to every request
- `decodingQueue`: The `DispatchQueue` to decode responses on

#### Making a request
To make a request first initialize a [Request](#request) and then pass it to `makeRequest`. The `complete` closure will be called with an `APIResponse`

```swift
func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], queue: DispatchQueue = DispatchQueue.main, complete: @escaping (APIResponse<T>) -> Void) -> Request? {
```

Example request (that is not neccessarily in this api):

```swift

let getUserRequest = JellyfinAPI.User.GetUser.Request(id: 123)
let apiClient = APIClient.default

apiClient.makeRequest(getUserRequest) { apiResponse in
    switch apiResponse {
        case .result(let apiResponseValue):
        	if let user = apiResponseValue.success {
        		print("GetUser returned user \(user)")
        	} else {
        		print("GetUser returned \(apiResponseValue)")
        	}
        case .error(let apiError):
        	print("GetUser failed with \(apiError)")
    }
}
```

Each [Request](#request) also has a `makeRequest` convenience function that uses `JellyfinAPI.shared`.

#### APIResponse
The `APIResponse` that gets passed to the completion closure contains the following properties:

- `request`: The original request
- `result`: A `Result` type either containing an `APIClientError` or the [Response](#response) of the request
- `urlRequest`: The `URLRequest` used to send the request
- `urlResponse`: The `HTTPURLResponse` that was returned by the request
- `data`: The `Data` returned by the request.
- `timeline`: The `Alamofire.Timeline` of the request which contains timing information.

#### Encoding and Decoding
Only JSON requests and responses are supported. These are encoded and decoded by `JSONEncoder` and `JSONDecoder` respectively, using Swift's `Codable` apis.
There are some options to control how invalid JSON is handled when decoding and these are available as static properties on `JellyfinAPI`:

- `safeOptionalDecoding`: Whether to discard any errors when decoding optional properties. Defaults to `true`.
- `safeArrayDecoding`: Whether to remove invalid elements instead of throwing when decoding arrays. Defaults to `true`.

Dates are encoded and decoded differently according to the swagger date format. They use different `DateFormatter`'s that you can set.
- `date-time`
    - `DateTime.dateEncodingFormatter`: defaults to `yyyy-MM-dd'T'HH:mm:ss.Z`
    - `DateTime.dateDecodingFormatters`: an array of date formatters. The first one to decode successfully will be used
- `date`
    - `DateDay.dateFormatter`: defaults to `yyyy-MM-dd`

#### APIClientError
This is error enum that `APIResponse.result` may contain:

```swift
public enum APIClientError: Error {
    case unexpectedStatusCode(statusCode: Int, data: Data)
    case decodingError(DecodingError)
    case requestEncodingError(String)
    case validationError(String)
    case networkError(Error)
    case unknownError(Error)
}
```

#### RequestBehaviour
Request behaviours are used to modify, authorize, monitor or respond to requests. They can be added to the `APIClient.behaviours` for all requests, or they can passed into `makeRequest` for just that single request.

`RequestBehaviour` is a protocol you can conform to with each function being optional. As the behaviours must work across multiple different request types, they only have access to a typed erased `AnyRequest`.

```swift
public protocol RequestBehaviour {

    /// runs first and allows the requests to be modified. If modifying asynchronously use validate
    func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest

    /// validates and modifies the request. complete must be called with either .success or .fail
    func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)

    /// called before request is sent
    func beforeSend(request: AnyRequest)

    /// called when request successfuly returns a 200 range response
    func onSuccess(request: AnyRequest, result: Any)

    /// called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range
    func onFailure(request: AnyRequest, error: APIClientError)

    /// called if the request recieves a network response. This is not called if request fails validation or encoding
    func onResponse(request: AnyRequest, response: AnyResponse)
}
```

### Authorization
Each request has an optional `securityRequirement`. You can create a `RequestBehaviour` that checks this requirement and adds some form of authorization (usually via headers) in `validate` or `modifyRequest`. An alternative way is to set the `APIClient.defaultHeaders` which applies to all requests.

#### Reactive and Promises
To add support for a specific asynchronous library, just add an extension on `APIClient` and add a function that wraps the `makeRequest` function and converts from a closure based syntax to returning the object of choice (stream, future...ect)

## Models

- **AccessScheduleModel**
- **ActivityLogEntryModel**
- **ActivityLogEntryQueryResultModel**
- **AddVirtualFolderDtoModel**
- **AdminNotificationDtoModel**
- **AlbumInfoModel**
- **AlbumInfoRemoteSearchQueryModel**
- **AllThemeMediaResultModel**
- **Architecture**
- **ArtistInfoModel**
- **ArtistInfoRemoteSearchQueryModel**
- **AuthenticateUserByNameModel**
- **AuthenticationInfoModel**
- **AuthenticationInfoQueryResultModel**
- **AuthenticationResultModel**
- **BaseItemDtoModel**
- **BaseItemDtoQueryResultModel**
- **BaseItemModel**
- **BaseItemPersonModel**
- **BasePluginConfigurationModel**
- **BookInfoModel**
- **BookInfoRemoteSearchQueryModel**
- **BoxSetInfoModel**
- **BoxSetInfoRemoteSearchQueryModel**
- **BrandingOptionsModel**
- **BufferRequestDtoModel**
- **ChannelFeaturesModel**
- **ChannelItemSortField**
- **ChannelMappingOptionsDtoModel**
- **ChannelMediaContentType**
- **ChannelMediaType**
- **ChannelType**
- **ChapterInfoModel**
- **ClientCapabilitiesDtoModel**
- **ClientCapabilitiesModel**
- **CodecProfileModel**
- **CodecType**
- **CollectionCreationResultModel**
- **CollectionTypeOptions**
- **ConfigurationPageInfoModel**
- **ConfigurationPageType**
- **ContainerProfileModel**
- **ControlResponseModel**
- **CountryInfoModel**
- **CreatePlaylistDtoModel**
- **CreateUserByNameModel**
- **CultureDtoModel**
- **DayOfWeek**
- **DayPattern**
- **DefaultDirectoryBrowserInfoDtoModel**
- **DeviceIdentificationModel**
- **DeviceInfoModel**
- **DeviceInfoQueryResultModel**
- **DeviceOptionsModel**
- **DeviceProfileInfoModel**
- **DeviceProfileModel**
- **DeviceProfileType**
- **DirectPlayProfileModel**
- **DisplayPreferencesDtoModel**
- **DlnaProfileType**
- **DynamicDayOfWeek**
- **EncodingContext**
- **EndPointInfoModel**
- **ExternalIdInfoModel**
- **ExternalIdMediaType**
- **ExternalUrlModel**
- **FFmpegLocation**
- **FileSystemEntryInfoModel**
- **FileSystemEntryType**
- **FontFileModel**
- **ForgotPasswordAction**
- **ForgotPasswordDtoModel**
- **ForgotPasswordPinDtoModel**
- **ForgotPasswordResultModel**
- **GeneralCommandModel**
- **GeneralCommandType**
- **GetProgramsDtoModel**
- **GroupInfoDtoModel**
- **GroupQueueMode**
- **GroupRepeatMode**
- **GroupShuffleMode**
- **GroupStateType**
- **GroupUpdateType**
- **GuideInfoModel**
- **HeaderMatchType**
- **HttpHeaderInfoModel**
- **IPluginModel**
- **IgnoreWaitRequestDtoModel**
- **ImageByNameInfoModel**
- **ImageFormat**
- **ImageInfoModel**
- **ImageOptionModel**
- **ImageOrientation**
- **ImageProviderInfoModel**
- **ImageSavingConvention**
- **ImageType**
- **InstallationInfoModel**
- **IsoType**
- **ItemCountsModel**
- **ItemFields**
- **ItemFilter**
- **JoinGroupRequestDtoModel**
- **KeepUntil**
- **LibraryOptionInfoDtoModel**
- **LibraryOptionsModel**
- **LibraryOptionsResultDtoModel**
- **LibraryTypeOptionsDtoModel**
- **LibraryUpdateInfoModel**
- **ListingsProviderInfoModel**
- **LiveStreamResponseModel**
- **LiveTvInfoModel**
- **LiveTvServiceInfoModel**
- **LiveTvServiceStatus**
- **LocalizationOptionModel**
- **LocationType**
- **LogFileModel**
- **LogLevel**
- **MediaAttachmentModel**
- **MediaEncoderPathDtoModel**
- **MediaPathDtoModel**
- **MediaPathInfoModel**
- **MediaProtocol**
- **MediaSourceInfoModel**
- **MediaSourceType**
- **MediaStreamModel**
- **MediaStreamType**
- **MediaUpdateInfoDtoModel**
- **MediaUpdateInfoPathDtoModel**
- **MediaUrlModel**
- **MessageCommandModel**
- **MetadataEditorInfoModel**
- **MetadataField**
- **MetadataOptionsModel**
- **MetadataRefreshMode**
- **MovePlaylistItemRequestDtoModel**
- **MovieInfoModel**
- **MovieInfoRemoteSearchQueryModel**
- **MusicVideoInfoModel**
- **MusicVideoInfoRemoteSearchQueryModel**
- **NameGuidPairModel**
- **NameIdPairModel**
- **NameValuePairModel**
- **NewGroupRequestDtoModel**
- **NextItemRequestDtoModel**
- **NotificationDtoModel**
- **NotificationLevel**
- **NotificationResultDtoModel**
- **NotificationTypeInfoModel**
- **NotificationsSummaryDtoModel**
- **ObjectGroupUpdateModel**
- **OpenLiveStreamDtoModel**
- **PackageInfoModel**
- **ParentalRatingModel**
- **PathSubstitutionModel**
- **PersonLookupInfoModel**
- **PersonLookupInfoRemoteSearchQueryModel**
- **PinRedeemResultModel**
- **PingRequestDtoModel**
- **PlayAccess**
- **PlayCommand**
- **PlayMethod**
- **PlayRequestDtoModel**
- **PlayRequestModel**
- **PlaybackErrorCode**
- **PlaybackInfoDtoModel**
- **PlaybackInfoResponseModel**
- **PlaybackProgressInfoModel**
- **PlaybackStartInfoModel**
- **PlaybackStopInfoModel**
- **PlayerStateInfoModel**
- **PlaylistCreationResultModel**
- **PlaystateCommand**
- **PlaystateRequestModel**
- **PluginInfoModel**
- **PluginSecurityInfoModel**
- **PluginStatus**
- **PreviousItemRequestDtoModel**
- **ProblemDetailsModel**
- **ProfileConditionModel**
- **ProfileConditionType**
- **ProfileConditionValue**
- **ProgramAudio**
- **PublicSystemInfoModel**
- **QueryFiltersLegacyModel**
- **QueryFiltersModel**
- **QueueItemModel**
- **QueueRequestDtoModel**
- **QuickConnectDtoModel**
- **QuickConnectResultModel**
- **QuickConnectState**
- **RatingType**
- **ReadyRequestDtoModel**
- **RecommendationDtoModel**
- **RecommendationType**
- **RecordingStatus**
- **RemoteImageInfoModel**
- **RemoteImageResultModel**
- **RemoteSearchResultModel**
- **RemoteSubtitleInfoModel**
- **RemoveFromPlaylistRequestDtoModel**
- **RepeatMode**
- **RepositoryInfoModel**
- **ResponseProfileModel**
- **ScrollDirection**
- **SearchHintModel**
- **SearchHintResultModel**
- **SeekRequestDtoModel**
- **SendCommandModel**
- **SendCommandType**
- **SeriesInfoModel**
- **SeriesInfoRemoteSearchQueryModel**
- **SeriesStatus**
- **SeriesTimerInfoDtoModel**
- **SeriesTimerInfoDtoQueryResultModel**
- **ServerConfigurationModel**
- **ServerDiscoveryInfoModel**
- **SessionInfoModel**
- **SessionMessageType**
- **SessionUserInfoModel**
- **SetChannelMappingDtoModel**
- **SetPlaylistItemRequestDtoModel**
- **SetRepeatModeRequestDtoModel**
- **SetShuffleModeRequestDtoModel**
- **SongInfoModel**
- **SortOrder**
- **SpecialViewOptionDtoModel**
- **StartupConfigurationDtoModel**
- **StartupRemoteAccessDtoModel**
- **StartupUserDtoModel**
- **SubtitleDeliveryMethod**
- **SubtitlePlaybackMode**
- **SubtitleProfileModel**
- **SyncPlayUserAccessType**
- **SystemInfoModel**
- **TaskCompletionStatus**
- **TaskInfoModel**
- **TaskResultModel**
- **TaskState**
- **TaskTriggerInfoModel**
- **ThemeMediaResultModel**
- **TimerEventInfoModel**
- **TimerInfoDtoModel**
- **TimerInfoDtoQueryResultModel**
- **TrailerInfoModel**
- **TrailerInfoRemoteSearchQueryModel**
- **TranscodeReason**
- **TranscodeSeekInfo**
- **TranscodingInfoModel**
- **TranscodingProfileModel**
- **TransportStreamTimestamp**
- **TunerChannelMappingModel**
- **TunerHostInfoModel**
- **TypeOptionsModel**
- **UnratedItem**
- **UpdateLibraryOptionsDtoModel**
- **UpdateMediaPathRequestDtoModel**
- **UpdateUserEasyPasswordModel**
- **UpdateUserPasswordModel**
- **UploadSubtitleDtoModel**
- **UserConfigurationModel**
- **UserDtoModel**
- **UserItemDataDtoModel**
- **UserPolicyModel**
- **UtcTimeResponseModel**
- **ValidatePathDtoModel**
- **VersionInfoModel**
- **VersionModel**
- **Video3DFormat**
- **VideoType**
- **VirtualFolderInfoModel**
- **WakeOnLanInfoModel**
- **XmlAttributeModel**

## Requests

- **JellyfinAPI.ActivityLog**
	- **GetLogEntries**: GET `/system/activitylog/entries`
- **JellyfinAPI.ApiKey**
	- **CreateKey**: POST `/auth/keys`
	- **GetKeys**: GET `/auth/keys`
	- **RevokeKey**: DELETE `/auth/keys/{key}`
- **JellyfinAPI.Artists**
	- **GetAlbumArtists**: GET `/artists/albumartists`
	- **GetArtistByName**: GET `/artists/{name}`
	- **GetArtists**: GET `/artists`
- **JellyfinAPI.Audio**
	- **GetAudioStream**: GET `/audio/{itemid}/stream`
	- **GetAudioStreamByContainer**: GET `/audio/{itemid}/stream.{container}`
	- **HeadAudioStream**: HEAD `/audio/{itemid}/stream`
	- **HeadAudioStreamByContainer**: HEAD `/audio/{itemid}/stream.{container}`
- **JellyfinAPI.Branding**
	- **GetBrandingCss**: GET `/branding/css`
	- **GetBrandingCss2**: GET `/branding/css.css`
	- **GetBrandingOptions**: GET `/branding/configuration`
- **JellyfinAPI.Channels**
	- **GetAllChannelFeatures**: GET `/channels/features`
	- **GetChannelFeatures**: GET `/channels/{channelid}/features`
	- **GetChannelItems**: GET `/channels/{channelid}/items`
	- **GetChannels**: GET `/channels`
	- **GetLatestChannelItems**: GET `/channels/items/latest`
- **JellyfinAPI.Collection**
	- **AddToCollection**: POST `/collections/{collectionid}/items`
	- **CreateCollection**: POST `/collections`
	- **RemoveFromCollection**: DELETE `/collections/{collectionid}/items`
- **JellyfinAPI.Configuration**
	- **GetConfiguration**: GET `/system/configuration`
	- **GetDefaultMetadataOptions**: GET `/system/configuration/metadataoptions/default`
	- **GetNamedConfiguration**: GET `/system/configuration/{key}`
	- **UpdateConfiguration**: POST `/system/configuration`
	- **UpdateMediaEncoderPath**: POST `/system/mediaencoder/path`
	- **UpdateNamedConfiguration**: POST `/system/configuration/{key}`
- **JellyfinAPI.Dashboard**
	- **GetConfigurationPages**: GET `/web/configurationpages`
	- **GetDashboardConfigurationPage**: GET `/web/configurationpage`
- **JellyfinAPI.Devices**
	- **DeleteDevice**: DELETE `/devices`
	- **GetDeviceInfo**: GET `/devices/info`
	- **GetDeviceOptions**: GET `/devices/options`
	- **GetDevices**: GET `/devices`
	- **UpdateDeviceOptions**: POST `/devices/options`
- **JellyfinAPI.DisplayPreferences**
	- **GetDisplayPreferences**: GET `/displaypreferences/{displaypreferencesid}`
	- **UpdateDisplayPreferences**: POST `/displaypreferences/{displaypreferencesid}`
- **JellyfinAPI.Dlna**
	- **CreateProfile**: POST `/dlna/profiles`
	- **DeleteProfile**: DELETE `/dlna/profiles/{profileid}`
	- **GetDefaultProfile**: GET `/dlna/profiles/default`
	- **GetProfile**: GET `/dlna/profiles/{profileid}`
	- **GetProfileInfos**: GET `/dlna/profileinfos`
	- **UpdateProfile**: POST `/dlna/profiles/{profileid}`
- **JellyfinAPI.DlnaServer**
	- **GetConnectionManager**: GET `/dlna/{serverid}/connectionmanager`
	- **GetConnectionManager2**: GET `/dlna/{serverid}/connectionmanager/connectionmanager`
	- **GetConnectionManager3**: GET `/dlna/{serverid}/connectionmanager/connectionmanager.xml`
	- **GetContentDirectory**: GET `/dlna/{serverid}/contentdirectory`
	- **GetContentDirectory2**: GET `/dlna/{serverid}/contentdirectory/contentdirectory`
	- **GetContentDirectory3**: GET `/dlna/{serverid}/contentdirectory/contentdirectory.xml`
	- **GetDescriptionXml**: GET `/dlna/{serverid}/description`
	- **GetDescriptionXml2**: GET `/dlna/{serverid}/description.xml`
	- **GetIcon**: GET `/dlna/icons/{filename}`
	- **GetIconId**: GET `/dlna/{serverid}/icons/{filename}`
	- **GetMediaReceiverRegistrar**: GET `/dlna/{serverid}/mediareceiverregistrar`
	- **GetMediaReceiverRegistrar2**: GET `/dlna/{serverid}/mediareceiverregistrar/mediareceiverregistrar`
	- **GetMediaReceiverRegistrar3**: GET `/dlna/{serverid}/mediareceiverregistrar/mediareceiverregistrar.xml`
	- **ProcessConnectionManagerControlRequest**: POST `/dlna/{serverid}/connectionmanager/control`
	- **ProcessContentDirectoryControlRequest**: POST `/dlna/{serverid}/contentdirectory/control`
	- **ProcessMediaReceiverRegistrarControlRequest**: POST `/dlna/{serverid}/mediareceiverregistrar/control`
- **JellyfinAPI.DynamicHls**
	- **GetHlsAudioSegment**: GET `/audio/{itemid}/hls1/{playlistid}/{segmentid}.{container}`
	- **GetHlsVideoSegment**: GET `/videos/{itemid}/hls1/{playlistid}/{segmentid}.{container}`
	- **GetMasterHlsAudioPlaylist**: GET `/audio/{itemid}/master.m3u8`
	- **GetMasterHlsVideoPlaylist**: GET `/videos/{itemid}/master.m3u8`
	- **GetVariantHlsAudioPlaylist**: GET `/audio/{itemid}/main.m3u8`
	- **GetVariantHlsVideoPlaylist**: GET `/videos/{itemid}/main.m3u8`
	- **HeadMasterHlsAudioPlaylist**: HEAD `/audio/{itemid}/master.m3u8`
	- **HeadMasterHlsVideoPlaylist**: HEAD `/videos/{itemid}/master.m3u8`
- **JellyfinAPI.Environment**
	- **GetDefaultDirectoryBrowser**: GET `/environment/defaultdirectorybrowser`
	- **GetDirectoryContents**: GET `/environment/directorycontents`
	- **GetDrives**: GET `/environment/drives`
	- **GetNetworkShares**: GET `/environment/networkshares`
	- **GetParentPath**: GET `/environment/parentpath`
	- **ValidatePath**: POST `/environment/validatepath`
- **JellyfinAPI.Filter**
	- **GetQueryFilters**: GET `/items/filters2`
	- **GetQueryFiltersLegacy**: GET `/items/filters`
- **JellyfinAPI.Genres**
	- **GetGenre**: GET `/genres/{genrename}`
	- **GetGenres**: GET `/genres`
- **JellyfinAPI.HlsSegment**
	- **GetHlsAudioSegmentLegacyAac**: GET `/audio/{itemid}/hls/{segmentid}/stream.aac`
	- **GetHlsAudioSegmentLegacyMp3**: GET `/audio/{itemid}/hls/{segmentid}/stream.mp3`
	- **GetHlsPlaylistLegacy**: GET `/videos/{itemid}/hls/{playlistid}/stream.m3u8`
	- **GetHlsVideoSegmentLegacy**: GET `/videos/{itemid}/hls/{playlistid}/{segmentid}.{segmentcontainer}`
	- **StopEncodingProcess**: DELETE `/videos/activeencodings`
- **JellyfinAPI.Image**
	- **DeleteItemImage**: DELETE `/items/{itemid}/images/{imagetype}`
	- **DeleteItemImageByIndex**: DELETE `/items/{itemid}/images/{imagetype}/{imageindex}`
	- **DeleteUserImage**: DELETE `/users/{userid}/images/{imagetype}`
	- **DeleteUserImageByIndex**: DELETE `/users/{userid}/images/{imagetype}/{index}`
	- **GetArtistImage**: GET `/artists/{name}/images/{imagetype}/{imageindex}`
	- **GetGenreImage**: GET `/genres/{name}/images/{imagetype}`
	- **GetGenreImageByIndex**: GET `/genres/{name}/images/{imagetype}/{imageindex}`
	- **GetItemImage**: GET `/items/{itemid}/images/{imagetype}`
	- **GetItemImage2**: GET `/items/{itemid}/images/{imagetype}/{imageindex}/{tag}/{format}/{maxwidth}/{maxheight}/{percentplayed}/{unplayedcount}`
	- **GetItemImageByIndex**: GET `/items/{itemid}/images/{imagetype}/{imageindex}`
	- **GetItemImageInfos**: GET `/items/{itemid}/images`
	- **GetMusicGenreImage**: GET `/musicgenres/{name}/images/{imagetype}`
	- **GetMusicGenreImageByIndex**: GET `/musicgenres/{name}/images/{imagetype}/{imageindex}`
	- **GetPersonImage**: GET `/persons/{name}/images/{imagetype}`
	- **GetPersonImageByIndex**: GET `/persons/{name}/images/{imagetype}/{imageindex}`
	- **GetStudioImage**: GET `/studios/{name}/images/{imagetype}`
	- **GetStudioImageByIndex**: GET `/studios/{name}/images/{imagetype}/{imageindex}`
	- **GetUserImage**: GET `/users/{userid}/images/{imagetype}`
	- **GetUserImageByIndex**: GET `/users/{userid}/images/{imagetype}/{imageindex}`
	- **HeadArtistImage**: HEAD `/artists/{name}/images/{imagetype}/{imageindex}`
	- **HeadGenreImage**: HEAD `/genres/{name}/images/{imagetype}`
	- **HeadGenreImageByIndex**: HEAD `/genres/{name}/images/{imagetype}/{imageindex}`
	- **HeadItemImage**: HEAD `/items/{itemid}/images/{imagetype}`
	- **HeadItemImage2**: HEAD `/items/{itemid}/images/{imagetype}/{imageindex}/{tag}/{format}/{maxwidth}/{maxheight}/{percentplayed}/{unplayedcount}`
	- **HeadItemImageByIndex**: HEAD `/items/{itemid}/images/{imagetype}/{imageindex}`
	- **HeadMusicGenreImage**: HEAD `/musicgenres/{name}/images/{imagetype}`
	- **HeadMusicGenreImageByIndex**: HEAD `/musicgenres/{name}/images/{imagetype}/{imageindex}`
	- **HeadPersonImage**: HEAD `/persons/{name}/images/{imagetype}`
	- **HeadPersonImageByIndex**: HEAD `/persons/{name}/images/{imagetype}/{imageindex}`
	- **HeadStudioImage**: HEAD `/studios/{name}/images/{imagetype}`
	- **HeadStudioImageByIndex**: HEAD `/studios/{name}/images/{imagetype}/{imageindex}`
	- **HeadUserImage**: HEAD `/users/{userid}/images/{imagetype}`
	- **HeadUserImageByIndex**: HEAD `/users/{userid}/images/{imagetype}/{imageindex}`
	- **PostUserImage**: POST `/users/{userid}/images/{imagetype}`
	- **PostUserImageByIndex**: POST `/users/{userid}/images/{imagetype}/{index}`
	- **SetItemImage**: POST `/items/{itemid}/images/{imagetype}`
	- **SetItemImageByIndex**: POST `/items/{itemid}/images/{imagetype}/{imageindex}`
	- **UpdateItemImageIndex**: POST `/items/{itemid}/images/{imagetype}/{imageindex}/index`
- **JellyfinAPI.ImageByName**
	- **GetGeneralImage**: GET `/images/general/{name}/{type}`
	- **GetGeneralImages**: GET `/images/general`
	- **GetMediaInfoImage**: GET `/images/mediainfo/{theme}/{name}`
	- **GetMediaInfoImages**: GET `/images/mediainfo`
	- **GetRatingImage**: GET `/images/ratings/{theme}/{name}`
	- **GetRatingImages**: GET `/images/ratings`
- **JellyfinAPI.InstantMix**
	- **GetInstantMixFromAlbum**: GET `/albums/{id}/instantmix`
	- **GetInstantMixFromArtists**: GET `/artists/{id}/instantmix`
	- **GetInstantMixFromArtists2**: GET `/artists/instantmix`
	- **GetInstantMixFromItem**: GET `/items/{id}/instantmix`
	- **GetInstantMixFromMusicGenreById**: GET `/musicgenres/{id}/instantmix`
	- **GetInstantMixFromMusicGenreById2**: GET `/musicgenres/instantmix`
	- **GetInstantMixFromMusicGenreByName**: GET `/musicgenres/{name}/instantmix`
	- **GetInstantMixFromPlaylist**: GET `/playlists/{id}/instantmix`
	- **GetInstantMixFromSong**: GET `/songs/{id}/instantmix`
- **JellyfinAPI.ItemLookup**
	- **ApplySearchCriteria**: POST `/items/remotesearch/apply/{itemid}`
	- **GetBookRemoteSearchResults**: POST `/items/remotesearch/book`
	- **GetBoxSetRemoteSearchResults**: POST `/items/remotesearch/boxset`
	- **GetExternalIdInfos**: GET `/items/{itemid}/externalidinfos`
	- **GetMovieRemoteSearchResults**: POST `/items/remotesearch/movie`
	- **GetMusicAlbumRemoteSearchResults**: POST `/items/remotesearch/musicalbum`
	- **GetMusicArtistRemoteSearchResults**: POST `/items/remotesearch/musicartist`
	- **GetMusicVideoRemoteSearchResults**: POST `/items/remotesearch/musicvideo`
	- **GetPersonRemoteSearchResults**: POST `/items/remotesearch/person`
	- **GetSeriesRemoteSearchResults**: POST `/items/remotesearch/series`
	- **GetTrailerRemoteSearchResults**: POST `/items/remotesearch/trailer`
- **JellyfinAPI.ItemRefresh**
	- **Post**: POST `/items/{itemid}/refresh`
- **JellyfinAPI.Items**
	- **GetItems**: GET `/items`
	- **GetItemsByUserId**: GET `/users/{userid}/items`
	- **GetResumeItems**: GET `/users/{userid}/items/resume`
- **JellyfinAPI.ItemUpdate**
	- **GetMetadataEditorInfo**: GET `/items/{itemid}/metadataeditor`
	- **UpdateItem**: POST `/items/{itemid}`
	- **UpdateItemContentType**: POST `/items/{itemid}/contenttype`
- **JellyfinAPI.Library**
	- **DeleteItem**: DELETE `/items/{itemid}`
	- **DeleteItems**: DELETE `/items`
	- **GetAncestors**: GET `/items/{itemid}/ancestors`
	- **GetCriticReviews**: GET `/items/{itemid}/criticreviews`
	- **GetDownload**: GET `/items/{itemid}/download`
	- **GetFile**: GET `/items/{itemid}/file`
	- **GetItemCounts**: GET `/items/counts`
	- **GetLibraryOptionsInfo**: GET `/libraries/availableoptions`
	- **GetMediaFolders**: GET `/library/mediafolders`
	- **GetPhysicalPaths**: GET `/library/physicalpaths`
	- **GetSimilarAlbums**: GET `/albums/{itemid}/similar`
	- **GetSimilarArtists**: GET `/artists/{itemid}/similar`
	- **GetSimilarItems**: GET `/items/{itemid}/similar`
	- **GetSimilarMovies**: GET `/movies/{itemid}/similar`
	- **GetSimilarShows**: GET `/shows/{itemid}/similar`
	- **GetSimilarTrailers**: GET `/trailers/{itemid}/similar`
	- **GetThemeMedia**: GET `/items/{itemid}/thememedia`
	- **GetThemeSongs**: GET `/items/{itemid}/themesongs`
	- **GetThemeVideos**: GET `/items/{itemid}/themevideos`
	- **PostAddedMovies**: POST `/library/movies/added`
	- **PostAddedSeries**: POST `/library/series/added`
	- **PostUpdatedMedia**: POST `/library/media/updated`
	- **PostUpdatedMovies**: POST `/library/movies/updated`
	- **PostUpdatedSeries**: POST `/library/series/updated`
	- **RefreshLibrary**: POST `/library/refresh`
- **JellyfinAPI.LibraryStructure**
	- **AddMediaPath**: POST `/library/virtualfolders/paths`
	- **AddVirtualFolder**: POST `/library/virtualfolders`
	- **GetVirtualFolders**: GET `/library/virtualfolders`
	- **RemoveMediaPath**: DELETE `/library/virtualfolders/paths`
	- **RemoveVirtualFolder**: DELETE `/library/virtualfolders`
	- **RenameVirtualFolder**: POST `/library/virtualfolders/name`
	- **UpdateLibraryOptions**: POST `/library/virtualfolders/libraryoptions`
	- **UpdateMediaPath**: POST `/library/virtualfolders/paths/update`
- **JellyfinAPI.LiveTv**
	- **AddListingProvider**: POST `/livetv/listingproviders`
	- **AddTunerHost**: POST `/livetv/tunerhosts`
	- **CancelSeriesTimer**: DELETE `/livetv/seriestimers/{timerid}`
	- **CancelTimer**: DELETE `/livetv/timers/{timerid}`
	- **CreateSeriesTimer**: POST `/livetv/seriestimers`
	- **CreateTimer**: POST `/livetv/timers`
	- **DeleteListingProvider**: DELETE `/livetv/listingproviders`
	- **DeleteRecording**: DELETE `/livetv/recordings/{recordingid}`
	- **DeleteTunerHost**: DELETE `/livetv/tunerhosts`
	- **DiscoverTuners**: GET `/livetv/tuners/discover`
	- **DiscvoverTuners**: GET `/livetv/tuners/discvover`
	- **GetChannel**: GET `/livetv/channels/{channelid}`
	- **GetChannelMappingOptions**: GET `/livetv/channelmappingoptions`
	- **GetDefaultListingProvider**: GET `/livetv/listingproviders/default`
	- **GetDefaultTimer**: GET `/livetv/timers/defaults`
	- **GetGuideInfo**: GET `/livetv/guideinfo`
	- **GetLineups**: GET `/livetv/listingproviders/lineups`
	- **GetLiveRecordingFile**: GET `/livetv/liverecordings/{recordingid}/stream`
	- **GetLiveStreamFile**: GET `/livetv/livestreamfiles/{streamid}/stream.{container}`
	- **GetLiveTvChannels**: GET `/livetv/channels`
	- **GetLiveTvInfo**: GET `/livetv/info`
	- **GetLiveTvPrograms**: GET `/livetv/programs`
	- **GetProgram**: GET `/livetv/programs/{programid}`
	- **GetPrograms**: POST `/livetv/programs`
	- **GetRecommendedPrograms**: GET `/livetv/programs/recommended`
	- **GetRecording**: GET `/livetv/recordings/{recordingid}`
	- **GetRecordingFolders**: GET `/livetv/recordings/folders`
	- **GetRecordingGroup**: GET `/livetv/recordings/groups/{groupid}`
	- **GetRecordingGroups**: GET `/livetv/recordings/groups`
	- **GetRecordings**: GET `/livetv/recordings`
	- **GetRecordingsSeries**: GET `/livetv/recordings/series`
	- **GetSchedulesDirectCountries**: GET `/livetv/listingproviders/schedulesdirect/countries`
	- **GetSeriesTimer**: GET `/livetv/seriestimers/{timerid}`
	- **GetSeriesTimers**: GET `/livetv/seriestimers`
	- **GetTimer**: GET `/livetv/timers/{timerid}`
	- **GetTimers**: GET `/livetv/timers`
	- **GetTunerHostTypes**: GET `/livetv/tunerhosts/types`
	- **ResetTuner**: POST `/livetv/tuners/{tunerid}/reset`
	- **SetChannelMapping**: POST `/livetv/channelmappings`
	- **UpdateSeriesTimer**: POST `/livetv/seriestimers/{timerid}`
	- **UpdateTimer**: POST `/livetv/timers/{timerid}`
- **JellyfinAPI.Localization**
	- **GetCountries**: GET `/localization/countries`
	- **GetCultures**: GET `/localization/cultures`
	- **GetLocalizationOptions**: GET `/localization/options`
	- **GetParentalRatings**: GET `/localization/parentalratings`
- **JellyfinAPI.MediaInfo**
	- **CloseLiveStream**: POST `/livestreams/close`
	- **GetBitrateTestBytes**: GET `/playback/bitratetest`
	- **GetPlaybackInfo**: GET `/items/{itemid}/playbackinfo`
	- **GetPostedPlaybackInfo**: POST `/items/{itemid}/playbackinfo`
	- **OpenLiveStream**: POST `/livestreams/open`
- **JellyfinAPI.Movies**
	- **GetMovieRecommendations**: GET `/movies/recommendations`
- **JellyfinAPI.MusicGenres**
	- **GetMusicGenre**: GET `/musicgenres/{genrename}`
	- **GetMusicGenres**: GET `/musicgenres`
- **JellyfinAPI.Notifications**
	- **CreateAdminNotification**: POST `/notifications/admin`
	- **GetNotificationServices**: GET `/notifications/services`
	- **GetNotificationTypes**: GET `/notifications/types`
	- **GetNotifications**: GET `/notifications/{userid}`
	- **GetNotificationsSummary**: GET `/notifications/{userid}/summary`
	- **SetRead**: POST `/notifications/{userid}/read`
	- **SetUnread**: POST `/notifications/{userid}/unread`
- **JellyfinAPI.Package**
	- **CancelPackageInstallation**: DELETE `/packages/installing/{packageid}`
	- **GetPackageInfo**: GET `/packages/{name}`
	- **GetPackages**: GET `/packages`
	- **GetRepositories**: GET `/repositories`
	- **InstallPackage**: POST `/packages/installed/{name}`
	- **SetRepositories**: POST `/repositories`
- **JellyfinAPI.Persons**
	- **GetPerson**: GET `/persons/{name}`
	- **GetPersons**: GET `/persons`
- **JellyfinAPI.Playlists**
	- **AddToPlaylist**: POST `/playlists/{playlistid}/items`
	- **CreatePlaylist**: POST `/playlists`
	- **GetPlaylistItems**: GET `/playlists/{playlistid}/items`
	- **MoveItem**: POST `/playlists/{playlistid}/items/{itemid}/move/{newindex}`
	- **RemoveFromPlaylist**: DELETE `/playlists/{playlistid}/items`
- **JellyfinAPI.Playstate**
	- **MarkPlayedItem**: POST `/users/{userid}/playeditems/{itemid}`
	- **MarkUnplayedItem**: DELETE `/users/{userid}/playeditems/{itemid}`
	- **OnPlaybackProgress**: POST `/users/{userid}/playingitems/{itemid}/progress`
	- **OnPlaybackStart**: POST `/users/{userid}/playingitems/{itemid}`
	- **OnPlaybackStopped**: DELETE `/users/{userid}/playingitems/{itemid}`
	- **PingPlaybackSession**: POST `/sessions/playing/ping`
	- **ReportPlaybackProgress**: POST `/sessions/playing/progress`
	- **ReportPlaybackStart**: POST `/sessions/playing`
	- **ReportPlaybackStopped**: POST `/sessions/playing/stopped`
- **JellyfinAPI.Plugins**
	- **DisablePlugin**: POST `/plugins/{pluginid}/{version}/disable`
	- **EnablePlugin**: POST `/plugins/{pluginid}/{version}/enable`
	- **GetPluginConfiguration**: GET `/plugins/{pluginid}/configuration`
	- **GetPluginImage**: GET `/plugins/{pluginid}/{version}/image`
	- **GetPluginManifest**: POST `/plugins/{pluginid}/manifest`
	- **GetPlugins**: GET `/plugins`
	- **UninstallPlugin**: DELETE `/plugins/{pluginid}`
	- **UninstallPluginByVersion**: DELETE `/plugins/{pluginid}/{version}`
	- **UpdatePluginConfiguration**: POST `/plugins/{pluginid}/configuration`
	- **UpdatePluginSecurityInfo**: POST `/plugins/securityinfo`
- **JellyfinAPI.QuickConnect**
	- **Activate**: POST `/quickconnect/activate`
	- **Authorize**: POST `/quickconnect/authorize`
	- **Available**: POST `/quickconnect/available`
	- **Connect**: GET `/quickconnect/connect`
	- **Deauthorize**: POST `/quickconnect/deauthorize`
	- **GetStatus**: GET `/quickconnect/status`
	- **Initiate**: GET `/quickconnect/initiate`
- **JellyfinAPI.RemoteImage**
	- **DownloadRemoteImage**: POST `/items/{itemid}/remoteimages/download`
	- **GetRemoteImageProviders**: GET `/items/{itemid}/remoteimages/providers`
	- **GetRemoteImages**: GET `/items/{itemid}/remoteimages`
- **JellyfinAPI.ScheduledTasks**
	- **GetTask**: GET `/scheduledtasks/{taskid}`
	- **GetTasks**: GET `/scheduledtasks`
	- **StartTask**: POST `/scheduledtasks/running/{taskid}`
	- **StopTask**: DELETE `/scheduledtasks/running/{taskid}`
	- **UpdateTask**: POST `/scheduledtasks/{taskid}/triggers`
- **JellyfinAPI.Search**
	- **Get**: GET `/search/hints`
- **JellyfinAPI.Session**
	- **AddUserToSession**: POST `/sessions/{sessionid}/user/{userid}`
	- **DisplayContent**: POST `/sessions/{sessionid}/viewing`
	- **GetAuthProviders**: GET `/auth/providers`
	- **GetPasswordResetProviders**: GET `/auth/passwordresetproviders`
	- **GetSessions**: GET `/sessions`
	- **Play**: POST `/sessions/{sessionid}/playing`
	- **PostCapabilities**: POST `/sessions/capabilities`
	- **PostFullCapabilities**: POST `/sessions/capabilities/full`
	- **RemoveUserFromSession**: DELETE `/sessions/{sessionid}/user/{userid}`
	- **ReportSessionEnded**: POST `/sessions/logout`
	- **ReportViewing**: POST `/sessions/viewing`
	- **SendFullGeneralCommand**: POST `/sessions/{sessionid}/command`
	- **SendGeneralCommand**: POST `/sessions/{sessionid}/command/{command}`
	- **SendMessageCommand**: POST `/sessions/{sessionid}/message`
	- **SendPlaystateCommand**: POST `/sessions/{sessionid}/playing/{command}`
	- **SendSystemCommand**: POST `/sessions/{sessionid}/system/{command}`
- **JellyfinAPI.Startup**
	- **CompleteWizard**: POST `/startup/complete`
	- **GetFirstUser**: GET `/startup/user`
	- **GetFirstUser2**: GET `/startup/firstuser`
	- **GetStartupConfiguration**: GET `/startup/configuration`
	- **SetRemoteAccess**: POST `/startup/remoteaccess`
	- **UpdateInitialConfiguration**: POST `/startup/configuration`
	- **UpdateStartupUser**: POST `/startup/user`
- **JellyfinAPI.Studios**
	- **GetStudio**: GET `/studios/{name}`
	- **GetStudios**: GET `/studios`
- **JellyfinAPI.Subtitle**
	- **DeleteSubtitle**: DELETE `/videos/{itemid}/subtitles/{index}`
	- **DownloadRemoteSubtitles**: POST `/items/{itemid}/remotesearch/subtitles/{subtitleid}`
	- **GetFallbackFont**: GET `/fallbackfont/fonts/{name}`
	- **GetFallbackFontList**: GET `/fallbackfont/fonts`
	- **GetRemoteSubtitles**: GET `/providers/subtitles/subtitles/{id}`
	- **GetSubtitle**: GET `/videos/{routeitemid}/routemediasourceid/subtitles/{routeindex}/stream.{routeformat}`
	- **GetSubtitlePlaylist**: GET `/videos/{itemid}/{mediasourceid}/subtitles/{index}/subtitles.m3u8`
	- **GetSubtitleWithTicks**: GET `/videos/{routeitemid}/{routemediasourceid}/subtitles/{routeindex}/{routestartpositionticks}/stream.{routeformat}`
	- **SearchRemoteSubtitles**: GET `/items/{itemid}/remotesearch/subtitles/{language}`
	- **UploadSubtitle**: POST `/videos/{itemid}/subtitles`
- **JellyfinAPI.Suggestions**
	- **GetSuggestions**: GET `/users/{userid}/suggestions`
- **JellyfinAPI.SyncPlay**
	- **SyncPlayBuffering**: POST `/syncplay/buffering`
	- **SyncPlayCreateGroup**: POST `/syncplay/new`
	- **SyncPlayGetGroups**: GET `/syncplay/list`
	- **SyncPlayJoinGroup**: POST `/syncplay/join`
	- **SyncPlayLeaveGroup**: POST `/syncplay/leave`
	- **SyncPlayMovePlaylistItem**: POST `/syncplay/moveplaylistitem`
	- **SyncPlayNextItem**: POST `/syncplay/nextitem`
	- **SyncPlayPause**: POST `/syncplay/pause`
	- **SyncPlayPing**: POST `/syncplay/ping`
	- **SyncPlayPreviousItem**: POST `/syncplay/previousitem`
	- **SyncPlayQueue**: POST `/syncplay/queue`
	- **SyncPlayReady**: POST `/syncplay/ready`
	- **SyncPlayRemoveFromPlaylist**: POST `/syncplay/removefromplaylist`
	- **SyncPlaySeek**: POST `/syncplay/seek`
	- **SyncPlaySetIgnoreWait**: POST `/syncplay/setignorewait`
	- **SyncPlaySetNewQueue**: POST `/syncplay/setnewqueue`
	- **SyncPlaySetPlaylistItem**: POST `/syncplay/setplaylistitem`
	- **SyncPlaySetRepeatMode**: POST `/syncplay/setrepeatmode`
	- **SyncPlaySetShuffleMode**: POST `/syncplay/setshufflemode`
	- **SyncPlayStop**: POST `/syncplay/stop`
	- **SyncPlayUnpause**: POST `/syncplay/unpause`
- **JellyfinAPI.System**
	- **GetEndpointInfo**: GET `/system/endpoint`
	- **GetLogFile**: GET `/system/logs/log`
	- **GetPingSystem**: GET `/system/ping`
	- **GetPublicSystemInfo**: GET `/system/info/public`
	- **GetServerLogs**: GET `/system/logs`
	- **GetSystemInfo**: GET `/system/info`
	- **GetWakeOnLanInfo**: GET `/system/wakeonlaninfo`
	- **PostPingSystem**: POST `/system/ping`
	- **RestartApplication**: POST `/system/restart`
	- **ShutdownApplication**: POST `/system/shutdown`
- **JellyfinAPI.TimeSync**
	- **GetUtcTime**: GET `/getutctime`
- **JellyfinAPI.Trailers**
	- **GetTrailers**: GET `/trailers`
- **JellyfinAPI.TvShows**
	- **GetEpisodes**: GET `/shows/{seriesid}/episodes`
	- **GetNextUp**: GET `/shows/nextup`
	- **GetSeasons**: GET `/shows/{seriesid}/seasons`
	- **GetUpcomingEpisodes**: GET `/shows/upcoming`
- **JellyfinAPI.UniversalAudio**
	- **GetUniversalAudioStream**: GET `/audio/{itemid}/universal`
	- **HeadUniversalAudioStream**: HEAD `/audio/{itemid}/universal`
- **JellyfinAPI.User**
	- **AuthenticateUser**: POST `/users/{userid}/authenticate`
	- **AuthenticateUserByName**: POST `/users/authenticatebyname`
	- **AuthenticateWithQuickConnect**: POST `/users/authenticatewithquickconnect`
	- **CreateUserByName**: POST `/users/new`
	- **DeleteUser**: DELETE `/users/{userid}`
	- **ForgotPassword**: POST `/users/forgotpassword`
	- **ForgotPasswordPin**: POST `/users/forgotpassword/pin`
	- **GetCurrentUser**: GET `/users/me`
	- **GetPublicUsers**: GET `/users/public`
	- **GetUserById**: GET `/users/{userid}`
	- **GetUsers**: GET `/users`
	- **UpdateUser**: POST `/users/{userid}`
	- **UpdateUserConfiguration**: POST `/users/{userid}/configuration`
	- **UpdateUserEasyPassword**: POST `/users/{userid}/easypassword`
	- **UpdateUserPassword**: POST `/users/{userid}/password`
	- **UpdateUserPolicy**: POST `/users/{userid}/policy`
- **JellyfinAPI.UserLibrary**
	- **DeleteUserItemRating**: DELETE `/users/{userid}/items/{itemid}/rating`
	- **GetIntros**: GET `/users/{userid}/items/{itemid}/intros`
	- **GetItem**: GET `/users/{userid}/items/{itemid}`
	- **GetLatestMedia**: GET `/users/{userid}/items/latest`
	- **GetLocalTrailers**: GET `/users/{userid}/items/{itemid}/localtrailers`
	- **GetRootFolder**: GET `/users/{userid}/items/root`
	- **GetSpecialFeatures**: GET `/users/{userid}/items/{itemid}/specialfeatures`
	- **MarkFavoriteItem**: POST `/users/{userid}/favoriteitems/{itemid}`
	- **UnmarkFavoriteItem**: DELETE `/users/{userid}/favoriteitems/{itemid}`
	- **UpdateUserItemRating**: POST `/users/{userid}/items/{itemid}/rating`
- **JellyfinAPI.UserViews**
	- **GetGroupingOptions**: GET `/users/{userid}/groupingoptions`
	- **GetUserViews**: GET `/users/{userid}/views`
- **JellyfinAPI.VideoAttachments**
	- **GetAttachment**: GET `/videos/{videoid}/{mediasourceid}/attachments/{index}`
- **JellyfinAPI.VideoHls**
	- **GetLiveHlsStream**: GET `/videos/{itemid}/live.m3u8`
- **JellyfinAPI.Videos**
	- **DeleteAlternateSources**: DELETE `/videos/{itemid}/alternatesources`
	- **GetAdditionalPart**: GET `/videos/{itemid}/additionalparts`
	- **GetVideoStream**: GET `/videos/{itemid}/stream`
	- **GetVideoStreamByContainer**: GET `/videos/{itemid}/stream.{container}`
	- **HeadVideoStream**: HEAD `/videos/{itemid}/stream`
	- **HeadVideoStreamByContainer**: HEAD `/videos/{itemid}/stream.{container}`
	- **MergeVersions**: POST `/videos/mergeversions`
- **JellyfinAPI.Years**
	- **GetYear**: GET `/years/{year}`
	- **GetYears**: GET `/years`
