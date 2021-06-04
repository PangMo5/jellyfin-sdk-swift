//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Items {

    /** Gets items based on a query. */
    public enum GetItems {

        public static let service = APIService<Response>(id: "GetItems", tag: "Items", method: "GET", path: "/Items", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The user id supplied as query parameter. */
                public var userId: ID?

                /** Optional filter by maximum official rating (PG, PG-13, TV-MA, etc). */
                public var maxOfficialRating: String?

                /** Optional filter by items with theme songs. */
                public var hasThemeSong: Bool?

                /** Optional filter by items with theme videos. */
                public var hasThemeVideo: Bool?

                /** Optional filter by items with subtitles. */
                public var hasSubtitles: Bool?

                /** Optional filter by items with special features. */
                public var hasSpecialFeature: Bool?

                /** Optional filter by items with trailers. */
                public var hasTrailer: Bool?

                /** Optional. Return items that are siblings of a supplied item. */
                public var adjacentTo: String?

                /** Optional filter by parent index number. */
                public var parentIndexNumber: Int?

                /** Optional filter by items that have or do not have a parental rating. */
                public var hasParentalRating: Bool?

                /** Optional filter by items that are HD or not. */
                public var isHd: Bool?

                /** Optional filter by items that are 4K or not. */
                public var is4K: Bool?

                /** Optional. If specified, results will be filtered based on LocationType. This allows multiple, comma delimited. */
                public var locationTypes: [LocationType]?

                /** Optional. If specified, results will be filtered based on the LocationType. This allows multiple, comma delimited. */
                public var excludeLocationTypes: [LocationType]?

                /** Optional filter by items that are missing episodes or not. */
                public var isMissing: Bool?

                /** Optional filter by items that are unaired episodes or not. */
                public var isUnaired: Bool?

                /** Optional filter by minimum community rating. */
                public var minCommunityRating: Double?

                /** Optional filter by minimum critic rating. */
                public var minCriticRating: Double?

                /** Optional. The minimum premiere date. Format = ISO. */
                public var minPremiereDate: DateTime?

                /** Optional. The minimum last saved date. Format = ISO. */
                public var minDateLastSaved: DateTime?

                /** Optional. The minimum last saved date for the current user. Format = ISO. */
                public var minDateLastSavedForUser: DateTime?

                /** Optional. The maximum premiere date. Format = ISO. */
                public var maxPremiereDate: DateTime?

                /** Optional filter by items that have an overview or not. */
                public var hasOverview: Bool?

                /** Optional filter by items that have an imdb id or not. */
                public var hasImdbId: Bool?

                /** Optional filter by items that have a tmdb id or not. */
                public var hasTmdbId: Bool?

                /** Optional filter by items that have a tvdb id or not. */
                public var hasTvdbId: Bool?

                /** Optional. If specified, results will be filtered by excluding item ids. This allows multiple, comma delimited. */
                public var excludeItemIds: [ID]?

                /** Optional. The record index to start at. All items with a lower index will be dropped from the results. */
                public var startIndex: Int?

                /** Optional. The maximum number of records to return. */
                public var limit: Int?

                /** When searching within folders, this determines whether or not the search will be recursive. true/false. */
                public var recursive: Bool?

                /** Optional. Filter based on a search term. */
                public var searchTerm: String?

                /** Sort Order - Ascending,Descending. */
                public var sortOrder: [SortOrder]?

                /** Specify this to localize the search to a specific item or folder. Omit to use the root. */
                public var parentId: ID?

                /** Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines. */
                public var fields: [ItemFields]?

                /** Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. */
                public var excludeItemTypes: [String]?

                /** Optional. If specified, results will be filtered based on the item type. This allows multiple, comma delimited. */
                public var includeItemTypes: [String]?

                /** Optional. Specify additional filters to apply. This allows multiple, comma delimited. Options: IsFolder, IsNotFolder, IsUnplayed, IsPlayed, IsFavorite, IsResumable, Likes, Dislikes. */
                public var filters: [ItemFilter]?

                /** Optional filter by items that are marked as favorite, or not. */
                public var isFavorite: Bool?

                /** Optional filter by MediaType. Allows multiple, comma delimited. */
                public var mediaTypes: [String]?

                /** Optional. If specified, results will be filtered based on those containing image types. This allows multiple, comma delimited. */
                public var imageTypes: [ImageType]?

                /** Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. */
                public var sortBy: [String]?

                /** Optional filter by items that are played, or not. */
                public var isPlayed: Bool?

                /** Optional. If specified, results will be filtered based on genre. This allows multiple, pipe delimited. */
                public var genres: [String]?

                /** Optional. If specified, results will be filtered based on OfficialRating. This allows multiple, pipe delimited. */
                public var officialRatings: [String]?

                /** Optional. If specified, results will be filtered based on tag. This allows multiple, pipe delimited. */
                public var tags: [String]?

                /** Optional. If specified, results will be filtered based on production year. This allows multiple, comma delimited. */
                public var years: [Int]?

                /** Optional, include user data. */
                public var enableUserData: Bool?

                /** Optional, the max number of images to return, per image type. */
                public var imageTypeLimit: Int?

                /** Optional. The image types to include in the output. */
                public var enableImageTypes: [ImageType]?

                /** Optional. If specified, results will be filtered to include only those containing the specified person. */
                public var person: String?

                /** Optional. If specified, results will be filtered to include only those containing the specified person id. */
                public var personIds: [ID]?

                /** Optional. If specified, along with Person, results will be filtered to include only those containing the specified person and PersonType. Allows multiple, comma-delimited. */
                public var personTypes: [String]?

                /** Optional. If specified, results will be filtered based on studio. This allows multiple, pipe delimited. */
                public var studios: [String]?

                /** Optional. If specified, results will be filtered based on artists. This allows multiple, pipe delimited. */
                public var artists: [String]?

                /** Optional. If specified, results will be filtered based on artist id. This allows multiple, pipe delimited. */
                public var excludeArtistIds: [ID]?

                /** Optional. If specified, results will be filtered to include only those containing the specified artist id. */
                public var artistIds: [ID]?

                /** Optional. If specified, results will be filtered to include only those containing the specified album artist id. */
                public var albumArtistIds: [ID]?

                /** Optional. If specified, results will be filtered to include only those containing the specified contributing artist id. */
                public var contributingArtistIds: [ID]?

                /** Optional. If specified, results will be filtered based on album. This allows multiple, pipe delimited. */
                public var albums: [String]?

                /** Optional. If specified, results will be filtered based on album id. This allows multiple, pipe delimited. */
                public var albumIds: [ID]?

                /** Optional. If specific items are needed, specify a list of item id's to retrieve. This allows multiple, comma delimited. */
                public var ids: [ID]?

                /** Optional filter by VideoType (videofile, dvd, bluray, iso). Allows multiple, comma delimited. */
                public var videoTypes: [VideoType]?

                /** Optional filter by minimum official rating (PG, PG-13, TV-MA, etc). */
                public var minOfficialRating: String?

                /** Optional filter by items that are locked. */
                public var isLocked: Bool?

                /** Optional filter by items that are placeholders. */
                public var isPlaceHolder: Bool?

                /** Optional filter by items that have official ratings. */
                public var hasOfficialRating: Bool?

                /** Whether or not to hide items behind their boxsets. */
                public var collapseBoxSetItems: Bool?

                /** Optional. Filter by the minimum width of the item. */
                public var minWidth: Int?

                /** Optional. Filter by the minimum height of the item. */
                public var minHeight: Int?

                /** Optional. Filter by the maximum width of the item. */
                public var maxWidth: Int?

                /** Optional. Filter by the maximum height of the item. */
                public var maxHeight: Int?

                /** Optional filter by items that are 3D, or not. */
                public var is3D: Bool?

                /** Optional filter by Series Status. Allows multiple, comma delimited. */
                public var seriesStatus: [SeriesStatus]?

                /** Optional filter by items whose name is sorted equally or greater than a given input string. */
                public var nameStartsWithOrGreater: String?

                /** Optional filter by items whose name is sorted equally than a given input string. */
                public var nameStartsWith: String?

                /** Optional filter by items whose name is equally or lesser than a given input string. */
                public var nameLessThan: String?

                /** Optional. If specified, results will be filtered based on studio id. This allows multiple, pipe delimited. */
                public var studioIds: [ID]?

                /** Optional. If specified, results will be filtered based on genre id. This allows multiple, pipe delimited. */
                public var genreIds: [ID]?

                /** Optional. Enable the total record count. */
                public var enableTotalRecordCount: Bool?

                /** Optional, include image information in output. */
                public var enableImages: Bool?

                public init(userId: ID? = nil, maxOfficialRating: String? = nil, hasThemeSong: Bool? = nil, hasThemeVideo: Bool? = nil, hasSubtitles: Bool? = nil, hasSpecialFeature: Bool? = nil, hasTrailer: Bool? = nil, adjacentTo: String? = nil, parentIndexNumber: Int? = nil, hasParentalRating: Bool? = nil, isHd: Bool? = nil, is4K: Bool? = nil, locationTypes: [LocationType]? = nil, excludeLocationTypes: [LocationType]? = nil, isMissing: Bool? = nil, isUnaired: Bool? = nil, minCommunityRating: Double? = nil, minCriticRating: Double? = nil, minPremiereDate: DateTime? = nil, minDateLastSaved: DateTime? = nil, minDateLastSavedForUser: DateTime? = nil, maxPremiereDate: DateTime? = nil, hasOverview: Bool? = nil, hasImdbId: Bool? = nil, hasTmdbId: Bool? = nil, hasTvdbId: Bool? = nil, excludeItemIds: [ID]? = nil, startIndex: Int? = nil, limit: Int? = nil, recursive: Bool? = nil, searchTerm: String? = nil, sortOrder: [SortOrder]? = nil, parentId: ID? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, filters: [ItemFilter]? = nil, isFavorite: Bool? = nil, mediaTypes: [String]? = nil, imageTypes: [ImageType]? = nil, sortBy: [String]? = nil, isPlayed: Bool? = nil, genres: [String]? = nil, officialRatings: [String]? = nil, tags: [String]? = nil, years: [Int]? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, person: String? = nil, personIds: [ID]? = nil, personTypes: [String]? = nil, studios: [String]? = nil, artists: [String]? = nil, excludeArtistIds: [ID]? = nil, artistIds: [ID]? = nil, albumArtistIds: [ID]? = nil, contributingArtistIds: [ID]? = nil, albums: [String]? = nil, albumIds: [ID]? = nil, ids: [ID]? = nil, videoTypes: [VideoType]? = nil, minOfficialRating: String? = nil, isLocked: Bool? = nil, isPlaceHolder: Bool? = nil, hasOfficialRating: Bool? = nil, collapseBoxSetItems: Bool? = nil, minWidth: Int? = nil, minHeight: Int? = nil, maxWidth: Int? = nil, maxHeight: Int? = nil, is3D: Bool? = nil, seriesStatus: [SeriesStatus]? = nil, nameStartsWithOrGreater: String? = nil, nameStartsWith: String? = nil, nameLessThan: String? = nil, studioIds: [ID]? = nil, genreIds: [ID]? = nil, enableTotalRecordCount: Bool? = nil, enableImages: Bool? = nil) {
                    self.userId = userId
                    self.maxOfficialRating = maxOfficialRating
                    self.hasThemeSong = hasThemeSong
                    self.hasThemeVideo = hasThemeVideo
                    self.hasSubtitles = hasSubtitles
                    self.hasSpecialFeature = hasSpecialFeature
                    self.hasTrailer = hasTrailer
                    self.adjacentTo = adjacentTo
                    self.parentIndexNumber = parentIndexNumber
                    self.hasParentalRating = hasParentalRating
                    self.isHd = isHd
                    self.is4K = is4K
                    self.locationTypes = locationTypes
                    self.excludeLocationTypes = excludeLocationTypes
                    self.isMissing = isMissing
                    self.isUnaired = isUnaired
                    self.minCommunityRating = minCommunityRating
                    self.minCriticRating = minCriticRating
                    self.minPremiereDate = minPremiereDate
                    self.minDateLastSaved = minDateLastSaved
                    self.minDateLastSavedForUser = minDateLastSavedForUser
                    self.maxPremiereDate = maxPremiereDate
                    self.hasOverview = hasOverview
                    self.hasImdbId = hasImdbId
                    self.hasTmdbId = hasTmdbId
                    self.hasTvdbId = hasTvdbId
                    self.excludeItemIds = excludeItemIds
                    self.startIndex = startIndex
                    self.limit = limit
                    self.recursive = recursive
                    self.searchTerm = searchTerm
                    self.sortOrder = sortOrder
                    self.parentId = parentId
                    self.fields = fields
                    self.excludeItemTypes = excludeItemTypes
                    self.includeItemTypes = includeItemTypes
                    self.filters = filters
                    self.isFavorite = isFavorite
                    self.mediaTypes = mediaTypes
                    self.imageTypes = imageTypes
                    self.sortBy = sortBy
                    self.isPlayed = isPlayed
                    self.genres = genres
                    self.officialRatings = officialRatings
                    self.tags = tags
                    self.years = years
                    self.enableUserData = enableUserData
                    self.imageTypeLimit = imageTypeLimit
                    self.enableImageTypes = enableImageTypes
                    self.person = person
                    self.personIds = personIds
                    self.personTypes = personTypes
                    self.studios = studios
                    self.artists = artists
                    self.excludeArtistIds = excludeArtistIds
                    self.artistIds = artistIds
                    self.albumArtistIds = albumArtistIds
                    self.contributingArtistIds = contributingArtistIds
                    self.albums = albums
                    self.albumIds = albumIds
                    self.ids = ids
                    self.videoTypes = videoTypes
                    self.minOfficialRating = minOfficialRating
                    self.isLocked = isLocked
                    self.isPlaceHolder = isPlaceHolder
                    self.hasOfficialRating = hasOfficialRating
                    self.collapseBoxSetItems = collapseBoxSetItems
                    self.minWidth = minWidth
                    self.minHeight = minHeight
                    self.maxWidth = maxWidth
                    self.maxHeight = maxHeight
                    self.is3D = is3D
                    self.seriesStatus = seriesStatus
                    self.nameStartsWithOrGreater = nameStartsWithOrGreater
                    self.nameStartsWith = nameStartsWith
                    self.nameLessThan = nameLessThan
                    self.studioIds = studioIds
                    self.genreIds = genreIds
                    self.enableTotalRecordCount = enableTotalRecordCount
                    self.enableImages = enableImages
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetItems.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(userId: ID? = nil, maxOfficialRating: String? = nil, hasThemeSong: Bool? = nil, hasThemeVideo: Bool? = nil, hasSubtitles: Bool? = nil, hasSpecialFeature: Bool? = nil, hasTrailer: Bool? = nil, adjacentTo: String? = nil, parentIndexNumber: Int? = nil, hasParentalRating: Bool? = nil, isHd: Bool? = nil, is4K: Bool? = nil, locationTypes: [LocationType]? = nil, excludeLocationTypes: [LocationType]? = nil, isMissing: Bool? = nil, isUnaired: Bool? = nil, minCommunityRating: Double? = nil, minCriticRating: Double? = nil, minPremiereDate: DateTime? = nil, minDateLastSaved: DateTime? = nil, minDateLastSavedForUser: DateTime? = nil, maxPremiereDate: DateTime? = nil, hasOverview: Bool? = nil, hasImdbId: Bool? = nil, hasTmdbId: Bool? = nil, hasTvdbId: Bool? = nil, excludeItemIds: [ID]? = nil, startIndex: Int? = nil, limit: Int? = nil, recursive: Bool? = nil, searchTerm: String? = nil, sortOrder: [SortOrder]? = nil, parentId: ID? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, filters: [ItemFilter]? = nil, isFavorite: Bool? = nil, mediaTypes: [String]? = nil, imageTypes: [ImageType]? = nil, sortBy: [String]? = nil, isPlayed: Bool? = nil, genres: [String]? = nil, officialRatings: [String]? = nil, tags: [String]? = nil, years: [Int]? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, person: String? = nil, personIds: [ID]? = nil, personTypes: [String]? = nil, studios: [String]? = nil, artists: [String]? = nil, excludeArtistIds: [ID]? = nil, artistIds: [ID]? = nil, albumArtistIds: [ID]? = nil, contributingArtistIds: [ID]? = nil, albums: [String]? = nil, albumIds: [ID]? = nil, ids: [ID]? = nil, videoTypes: [VideoType]? = nil, minOfficialRating: String? = nil, isLocked: Bool? = nil, isPlaceHolder: Bool? = nil, hasOfficialRating: Bool? = nil, collapseBoxSetItems: Bool? = nil, minWidth: Int? = nil, minHeight: Int? = nil, maxWidth: Int? = nil, maxHeight: Int? = nil, is3D: Bool? = nil, seriesStatus: [SeriesStatus]? = nil, nameStartsWithOrGreater: String? = nil, nameStartsWith: String? = nil, nameLessThan: String? = nil, studioIds: [ID]? = nil, genreIds: [ID]? = nil, enableTotalRecordCount: Bool? = nil, enableImages: Bool? = nil) {
                let options = Options(userId: userId, maxOfficialRating: maxOfficialRating, hasThemeSong: hasThemeSong, hasThemeVideo: hasThemeVideo, hasSubtitles: hasSubtitles, hasSpecialFeature: hasSpecialFeature, hasTrailer: hasTrailer, adjacentTo: adjacentTo, parentIndexNumber: parentIndexNumber, hasParentalRating: hasParentalRating, isHd: isHd, is4K: is4K, locationTypes: locationTypes, excludeLocationTypes: excludeLocationTypes, isMissing: isMissing, isUnaired: isUnaired, minCommunityRating: minCommunityRating, minCriticRating: minCriticRating, minPremiereDate: minPremiereDate, minDateLastSaved: minDateLastSaved, minDateLastSavedForUser: minDateLastSavedForUser, maxPremiereDate: maxPremiereDate, hasOverview: hasOverview, hasImdbId: hasImdbId, hasTmdbId: hasTmdbId, hasTvdbId: hasTvdbId, excludeItemIds: excludeItemIds, startIndex: startIndex, limit: limit, recursive: recursive, searchTerm: searchTerm, sortOrder: sortOrder, parentId: parentId, fields: fields, excludeItemTypes: excludeItemTypes, includeItemTypes: includeItemTypes, filters: filters, isFavorite: isFavorite, mediaTypes: mediaTypes, imageTypes: imageTypes, sortBy: sortBy, isPlayed: isPlayed, genres: genres, officialRatings: officialRatings, tags: tags, years: years, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, person: person, personIds: personIds, personTypes: personTypes, studios: studios, artists: artists, excludeArtistIds: excludeArtistIds, artistIds: artistIds, albumArtistIds: albumArtistIds, contributingArtistIds: contributingArtistIds, albums: albums, albumIds: albumIds, ids: ids, videoTypes: videoTypes, minOfficialRating: minOfficialRating, isLocked: isLocked, isPlaceHolder: isPlaceHolder, hasOfficialRating: hasOfficialRating, collapseBoxSetItems: collapseBoxSetItems, minWidth: minWidth, minHeight: minHeight, maxWidth: maxWidth, maxHeight: maxHeight, is3D: is3D, seriesStatus: seriesStatus, nameStartsWithOrGreater: nameStartsWithOrGreater, nameStartsWith: nameStartsWith, nameLessThan: nameLessThan, studioIds: studioIds, genreIds: genreIds, enableTotalRecordCount: enableTotalRecordCount, enableImages: enableImages)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let userId = options.userId?.encode() {
                  params["userId"] = userId
                }
                if let maxOfficialRating = options.maxOfficialRating {
                  params["maxOfficialRating"] = maxOfficialRating
                }
                if let hasThemeSong = options.hasThemeSong {
                  params["hasThemeSong"] = hasThemeSong
                }
                if let hasThemeVideo = options.hasThemeVideo {
                  params["hasThemeVideo"] = hasThemeVideo
                }
                if let hasSubtitles = options.hasSubtitles {
                  params["hasSubtitles"] = hasSubtitles
                }
                if let hasSpecialFeature = options.hasSpecialFeature {
                  params["hasSpecialFeature"] = hasSpecialFeature
                }
                if let hasTrailer = options.hasTrailer {
                  params["hasTrailer"] = hasTrailer
                }
                if let adjacentTo = options.adjacentTo {
                  params["adjacentTo"] = adjacentTo
                }
                if let parentIndexNumber = options.parentIndexNumber {
                  params["parentIndexNumber"] = parentIndexNumber
                }
                if let hasParentalRating = options.hasParentalRating {
                  params["hasParentalRating"] = hasParentalRating
                }
                if let isHd = options.isHd {
                  params["isHd"] = isHd
                }
                if let is4K = options.is4K {
                  params["is4K"] = is4K
                }
                if let locationTypes = options.locationTypes?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["locationTypes"] = locationTypes
                }
                if let excludeLocationTypes = options.excludeLocationTypes?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["excludeLocationTypes"] = excludeLocationTypes
                }
                if let isMissing = options.isMissing {
                  params["isMissing"] = isMissing
                }
                if let isUnaired = options.isUnaired {
                  params["isUnaired"] = isUnaired
                }
                if let minCommunityRating = options.minCommunityRating {
                  params["minCommunityRating"] = minCommunityRating
                }
                if let minCriticRating = options.minCriticRating {
                  params["minCriticRating"] = minCriticRating
                }
                if let minPremiereDate = options.minPremiereDate?.encode() {
                  params["minPremiereDate"] = minPremiereDate
                }
                if let minDateLastSaved = options.minDateLastSaved?.encode() {
                  params["minDateLastSaved"] = minDateLastSaved
                }
                if let minDateLastSavedForUser = options.minDateLastSavedForUser?.encode() {
                  params["minDateLastSavedForUser"] = minDateLastSavedForUser
                }
                if let maxPremiereDate = options.maxPremiereDate?.encode() {
                  params["maxPremiereDate"] = maxPremiereDate
                }
                if let hasOverview = options.hasOverview {
                  params["hasOverview"] = hasOverview
                }
                if let hasImdbId = options.hasImdbId {
                  params["hasImdbId"] = hasImdbId
                }
                if let hasTmdbId = options.hasTmdbId {
                  params["hasTmdbId"] = hasTmdbId
                }
                if let hasTvdbId = options.hasTvdbId {
                  params["hasTvdbId"] = hasTvdbId
                }
                if let excludeItemIds = options.excludeItemIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["excludeItemIds"] = excludeItemIds
                }
                if let startIndex = options.startIndex {
                  params["startIndex"] = startIndex
                }
                if let limit = options.limit {
                  params["limit"] = limit
                }
                if let recursive = options.recursive {
                  params["recursive"] = recursive
                }
                if let searchTerm = options.searchTerm {
                  params["searchTerm"] = searchTerm
                }
                if let sortOrder = options.sortOrder?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["sortOrder"] = sortOrder
                }
                if let parentId = options.parentId?.encode() {
                  params["parentId"] = parentId
                }
                if let fields = options.fields?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields"] = fields
                }
                if let excludeItemTypes = options.excludeItemTypes?.joined(separator: ",") {
                  params["excludeItemTypes"] = excludeItemTypes
                }
                if let includeItemTypes = options.includeItemTypes?.joined(separator: ",") {
                  params["includeItemTypes"] = includeItemTypes
                }
                if let filters = options.filters?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["filters"] = filters
                }
                if let isFavorite = options.isFavorite {
                  params["isFavorite"] = isFavorite
                }
                if let mediaTypes = options.mediaTypes?.joined(separator: ",") {
                  params["mediaTypes"] = mediaTypes
                }
                if let imageTypes = options.imageTypes?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["imageTypes"] = imageTypes
                }
                if let sortBy = options.sortBy?.joined(separator: ",") {
                  params["sortBy"] = sortBy
                }
                if let isPlayed = options.isPlayed {
                  params["isPlayed"] = isPlayed
                }
                if let genres = options.genres?.joined(separator: ",") {
                  params["genres"] = genres
                }
                if let officialRatings = options.officialRatings?.joined(separator: ",") {
                  params["officialRatings"] = officialRatings
                }
                if let tags = options.tags?.joined(separator: ",") {
                  params["tags"] = tags
                }
                if let years = options.years?.map({ String(describing: $0) }).joined(separator: ",") {
                  params["years"] = years
                }
                if let enableUserData = options.enableUserData {
                  params["enableUserData"] = enableUserData
                }
                if let imageTypeLimit = options.imageTypeLimit {
                  params["imageTypeLimit"] = imageTypeLimit
                }
                if let enableImageTypes = options.enableImageTypes?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["enableImageTypes"] = enableImageTypes
                }
                if let person = options.person {
                  params["person"] = person
                }
                if let personIds = options.personIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["personIds"] = personIds
                }
                if let personTypes = options.personTypes?.joined(separator: ",") {
                  params["personTypes"] = personTypes
                }
                if let studios = options.studios?.joined(separator: ",") {
                  params["studios"] = studios
                }
                if let artists = options.artists?.joined(separator: ",") {
                  params["artists"] = artists
                }
                if let excludeArtistIds = options.excludeArtistIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["excludeArtistIds"] = excludeArtistIds
                }
                if let artistIds = options.artistIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["artistIds"] = artistIds
                }
                if let albumArtistIds = options.albumArtistIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["albumArtistIds"] = albumArtistIds
                }
                if let contributingArtistIds = options.contributingArtistIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["contributingArtistIds"] = contributingArtistIds
                }
                if let albums = options.albums?.joined(separator: ",") {
                  params["albums"] = albums
                }
                if let albumIds = options.albumIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["albumIds"] = albumIds
                }
                if let ids = options.ids?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["ids"] = ids
                }
                if let videoTypes = options.videoTypes?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["videoTypes"] = videoTypes
                }
                if let minOfficialRating = options.minOfficialRating {
                  params["minOfficialRating"] = minOfficialRating
                }
                if let isLocked = options.isLocked {
                  params["isLocked"] = isLocked
                }
                if let isPlaceHolder = options.isPlaceHolder {
                  params["isPlaceHolder"] = isPlaceHolder
                }
                if let hasOfficialRating = options.hasOfficialRating {
                  params["hasOfficialRating"] = hasOfficialRating
                }
                if let collapseBoxSetItems = options.collapseBoxSetItems {
                  params["collapseBoxSetItems"] = collapseBoxSetItems
                }
                if let minWidth = options.minWidth {
                  params["minWidth"] = minWidth
                }
                if let minHeight = options.minHeight {
                  params["minHeight"] = minHeight
                }
                if let maxWidth = options.maxWidth {
                  params["maxWidth"] = maxWidth
                }
                if let maxHeight = options.maxHeight {
                  params["maxHeight"] = maxHeight
                }
                if let is3D = options.is3D {
                  params["is3D"] = is3D
                }
                if let seriesStatus = options.seriesStatus?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["seriesStatus"] = seriesStatus
                }
                if let nameStartsWithOrGreater = options.nameStartsWithOrGreater {
                  params["nameStartsWithOrGreater"] = nameStartsWithOrGreater
                }
                if let nameStartsWith = options.nameStartsWith {
                  params["nameStartsWith"] = nameStartsWith
                }
                if let nameLessThan = options.nameLessThan {
                  params["nameLessThan"] = nameLessThan
                }
                if let studioIds = options.studioIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["studioIds"] = studioIds
                }
                if let genreIds = options.genreIds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["genreIds"] = genreIds
                }
                if let enableTotalRecordCount = options.enableTotalRecordCount {
                  params["enableTotalRecordCount"] = enableTotalRecordCount
                }
                if let enableImages = options.enableImages {
                  params["enableImages"] = enableImages
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = BaseItemDtoQueryResultModel

            /** Success */
            case status200(BaseItemDtoQueryResultModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: BaseItemDtoQueryResultModel? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status401: return 401
                case .status403: return 403
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status401: return false
                case .status403: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(BaseItemDtoQueryResultModel.self, from: data))
                case 401: self = .status401
                case 403: self = .status403
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
