# UpdateConfigurationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logFileRetentionDays** | **Int** | Gets or sets the number of days we should retain log files. | [optional] 
**isStartupWizardCompleted** | **Bool** | Gets or sets a value indicating whether this instance is first run. | [optional] 
**cachePath** | **String** | Gets or sets the cache path. | [optional] 
**previousVersion** | **String** | Gets or sets the last known version that was ran using the configuration. | [optional] 
**previousVersionStr** | **String** | Gets or sets the stringified PreviousVersion to be stored/loaded,  because System.Version itself isn&#39;t xml-serializable. | [optional] 
**enableMetrics** | **Bool** | Gets or sets a value indicating whether to enable prometheus metrics exporting. | [optional] 
**enableNormalizedItemByNameIds** | **Bool** |  | [optional] 
**isPortAuthorized** | **Bool** | Gets or sets a value indicating whether this instance is port authorized. | [optional] 
**quickConnectAvailable** | **Bool** | Gets or sets a value indicating whether quick connect is available for use on this server. | [optional] 
**enableCaseSensitiveItemIds** | **Bool** | Gets or sets a value indicating whether [enable case sensitive item ids]. | [optional] 
**disableLiveTvChannelUserDataName** | **Bool** |  | [optional] 
**metadataPath** | **String** | Gets or sets the metadata path. | [optional] 
**metadataNetworkPath** | **String** |  | [optional] 
**preferredMetadataLanguage** | **String** | Gets or sets the preferred metadata language. | [optional] 
**metadataCountryCode** | **String** | Gets or sets the metadata country code. | [optional] 
**sortReplaceCharacters** | **[String]** | Gets or sets characters to be replaced with a &#39; &#39; in strings to create a sort name. | [optional] 
**sortRemoveCharacters** | **[String]** | Gets or sets characters to be removed from strings to create a sort name. | [optional] 
**sortRemoveWords** | **[String]** | Gets or sets words to be removed from strings to create a sort name. | [optional] 
**minResumePct** | **Int** | Gets or sets the minimum percentage of an item that must be played in order for playstate to be updated. | [optional] 
**maxResumePct** | **Int** | Gets or sets the maximum percentage of an item that can be played while still saving playstate. If this percentage is crossed playstate will be reset to the beginning and the item will be marked watched. | [optional] 
**minResumeDurationSeconds** | **Int** | Gets or sets the minimum duration that an item must have in order to be eligible for playstate updates.. | [optional] 
**minAudiobookResume** | **Int** | Gets or sets the minimum minutes of a book that must be played in order for playstate to be updated. | [optional] 
**maxAudiobookResume** | **Int** | Gets or sets the remaining minutes of a book that can be played while still saving playstate. If this percentage is crossed playstate will be reset to the beginning and the item will be marked watched. | [optional] 
**libraryMonitorDelay** | **Int** | Gets or sets the delay in seconds that we will wait after a file system change to try and discover what has been added/removed  Some delay is necessary with some items because their creation is not atomic.  It involves the creation of several  different directories and files. | [optional] 
**imageSavingConvention** | [**ImageSavingConvention**](ImageSavingConvention.md) | Gets or sets the image saving convention. | [optional] 
**metadataOptions** | [MetadataOptions] |  | [optional] 
**skipDeserializationForBasicTypes** | **Bool** |  | [optional] 
**serverName** | **String** |  | [optional] 
**uICulture** | **String** |  | [optional] 
**saveMetadataHidden** | **Bool** |  | [optional] 
**contentTypes** | [NameValuePair] |  | [optional] 
**remoteClientBitrateLimit** | **Int** |  | [optional] 
**enableFolderView** | **Bool** |  | [optional] 
**enableGroupingIntoCollections** | **Bool** |  | [optional] 
**displaySpecialsWithinSeasons** | **Bool** |  | [optional] 
**codecsUsed** | **[String]** |  | [optional] 
**pluginRepositories** | [RepositoryInfo] |  | [optional] 
**enableExternalContentInSuggestions** | **Bool** |  | [optional] 
**imageExtractionTimeoutMs** | **Int** |  | [optional] 
**pathSubstitutions** | [PathSubstitution] |  | [optional] 
**enableSlowResponseWarning** | **Bool** | Gets or sets a value indicating whether slow server responses should be logged as a warning. | [optional] 
**slowResponseThresholdMs** | **Int64** | Gets or sets the threshold for the slow response time warning in ms. | [optional] 
**corsHosts** | **[String]** | Gets or sets the cors hosts. | [optional] 
**activityLogRetentionDays** | **Int** | Gets or sets the number of days we should retain activity logs. | [optional] 
**libraryScanFanoutConcurrency** | **Int** | Gets or sets the how the library scan fans out. | [optional] 
**libraryMetadataRefreshConcurrency** | **Int** | Gets or sets the how many metadata refreshes can run concurrently. | [optional] 
**removeOldPlugins** | **Bool** | Gets or sets a value indicating whether older plugins should automatically be deleted from the plugin folder. | [optional] 
**allowClientLogUpload** | **Bool** | Gets or sets a value indicating whether clients should be allowed to upload logs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


