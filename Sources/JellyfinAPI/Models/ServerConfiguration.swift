//
// ServerConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents the server configuration. */
public struct ServerConfiguration: Codable, JSONEncodable, Hashable {

    /** Gets or sets the number of days we should retain log files. */
    public var logFileRetentionDays: Int?
    /** Gets or sets a value indicating whether this instance is first run. */
    public var isStartupWizardCompleted: Bool?
    /** Gets or sets the cache path. */
    public var cachePath: String?
    /** Gets or sets the last known version that was ran using the configuration. */
    public var previousVersion: String?
    /** Gets or sets the stringified PreviousVersion to be stored/loaded,  because System.Version itself isn't xml-serializable. */
    public var previousVersionStr: String?
    /** Gets or sets a value indicating whether to enable prometheus metrics exporting. */
    public var enableMetrics: Bool?
    public var enableNormalizedItemByNameIds: Bool?
    /** Gets or sets a value indicating whether this instance is port authorized. */
    public var isPortAuthorized: Bool?
    /** Gets or sets a value indicating whether quick connect is available for use on this server. */
    public var quickConnectAvailable: Bool?
    /** Gets or sets a value indicating whether [enable case sensitive item ids]. */
    public var enableCaseSensitiveItemIds: Bool?
    public var disableLiveTvChannelUserDataName: Bool?
    /** Gets or sets the metadata path. */
    public var metadataPath: String?
    public var metadataNetworkPath: String?
    /** Gets or sets the preferred metadata language. */
    public var preferredMetadataLanguage: String?
    /** Gets or sets the metadata country code. */
    public var metadataCountryCode: String?
    /** Gets or sets characters to be replaced with a ' ' in strings to create a sort name. */
    public var sortReplaceCharacters: [String]?
    /** Gets or sets characters to be removed from strings to create a sort name. */
    public var sortRemoveCharacters: [String]?
    /** Gets or sets words to be removed from strings to create a sort name. */
    public var sortRemoveWords: [String]?
    /** Gets or sets the minimum percentage of an item that must be played in order for playstate to be updated. */
    public var minResumePct: Int?
    /** Gets or sets the maximum percentage of an item that can be played while still saving playstate. If this percentage is crossed playstate will be reset to the beginning and the item will be marked watched. */
    public var maxResumePct: Int?
    /** Gets or sets the minimum duration that an item must have in order to be eligible for playstate updates.. */
    public var minResumeDurationSeconds: Int?
    /** Gets or sets the minimum minutes of a book that must be played in order for playstate to be updated. */
    public var minAudiobookResume: Int?
    /** Gets or sets the remaining minutes of a book that can be played while still saving playstate. If this percentage is crossed playstate will be reset to the beginning and the item will be marked watched. */
    public var maxAudiobookResume: Int?
    /** Gets or sets the delay in seconds that we will wait after a file system change to try and discover what has been added/removed  Some delay is necessary with some items because their creation is not atomic.  It involves the creation of several  different directories and files. */
    public var libraryMonitorDelay: Int?
    /** Gets or sets the image saving convention. */
    public var imageSavingConvention: ImageSavingConvention?
    public var metadataOptions: [MetadataOptions]?
    public var skipDeserializationForBasicTypes: Bool?
    public var serverName: String?
    public var uICulture: String?
    public var saveMetadataHidden: Bool?
    public var contentTypes: [NameValuePair]?
    public var remoteClientBitrateLimit: Int?
    public var enableFolderView: Bool?
    public var enableGroupingIntoCollections: Bool?
    public var displaySpecialsWithinSeasons: Bool?
    public var codecsUsed: [String]?
    public var pluginRepositories: [RepositoryInfo]?
    public var enableExternalContentInSuggestions: Bool?
    public var imageExtractionTimeoutMs: Int?
    public var pathSubstitutions: [PathSubstitution]?
    /** Gets or sets a value indicating whether slow server responses should be logged as a warning. */
    public var enableSlowResponseWarning: Bool?
    /** Gets or sets the threshold for the slow response time warning in ms. */
    public var slowResponseThresholdMs: Int64?
    /** Gets or sets the cors hosts. */
    public var corsHosts: [String]?
    /** Gets or sets the number of days we should retain activity logs. */
    public var activityLogRetentionDays: Int?
    /** Gets or sets the how the library scan fans out. */
    public var libraryScanFanoutConcurrency: Int?
    /** Gets or sets the how many metadata refreshes can run concurrently. */
    public var libraryMetadataRefreshConcurrency: Int?
    /** Gets or sets a value indicating whether older plugins should automatically be deleted from the plugin folder. */
    public var removeOldPlugins: Bool?
    /** Gets or sets a value indicating whether clients should be allowed to upload logs. */
    public var allowClientLogUpload: Bool?

    public init(logFileRetentionDays: Int? = nil, isStartupWizardCompleted: Bool? = nil, cachePath: String? = nil, previousVersion: String? = nil, previousVersionStr: String? = nil, enableMetrics: Bool? = nil, enableNormalizedItemByNameIds: Bool? = nil, isPortAuthorized: Bool? = nil, quickConnectAvailable: Bool? = nil, enableCaseSensitiveItemIds: Bool? = nil, disableLiveTvChannelUserDataName: Bool? = nil, metadataPath: String? = nil, metadataNetworkPath: String? = nil, preferredMetadataLanguage: String? = nil, metadataCountryCode: String? = nil, sortReplaceCharacters: [String]? = nil, sortRemoveCharacters: [String]? = nil, sortRemoveWords: [String]? = nil, minResumePct: Int? = nil, maxResumePct: Int? = nil, minResumeDurationSeconds: Int? = nil, minAudiobookResume: Int? = nil, maxAudiobookResume: Int? = nil, libraryMonitorDelay: Int? = nil, imageSavingConvention: ImageSavingConvention? = nil, metadataOptions: [MetadataOptions]? = nil, skipDeserializationForBasicTypes: Bool? = nil, serverName: String? = nil, uICulture: String? = nil, saveMetadataHidden: Bool? = nil, contentTypes: [NameValuePair]? = nil, remoteClientBitrateLimit: Int? = nil, enableFolderView: Bool? = nil, enableGroupingIntoCollections: Bool? = nil, displaySpecialsWithinSeasons: Bool? = nil, codecsUsed: [String]? = nil, pluginRepositories: [RepositoryInfo]? = nil, enableExternalContentInSuggestions: Bool? = nil, imageExtractionTimeoutMs: Int? = nil, pathSubstitutions: [PathSubstitution]? = nil, enableSlowResponseWarning: Bool? = nil, slowResponseThresholdMs: Int64? = nil, corsHosts: [String]? = nil, activityLogRetentionDays: Int? = nil, libraryScanFanoutConcurrency: Int? = nil, libraryMetadataRefreshConcurrency: Int? = nil, removeOldPlugins: Bool? = nil, allowClientLogUpload: Bool? = nil) {
        self.logFileRetentionDays = logFileRetentionDays
        self.isStartupWizardCompleted = isStartupWizardCompleted
        self.cachePath = cachePath
        self.previousVersion = previousVersion
        self.previousVersionStr = previousVersionStr
        self.enableMetrics = enableMetrics
        self.enableNormalizedItemByNameIds = enableNormalizedItemByNameIds
        self.isPortAuthorized = isPortAuthorized
        self.quickConnectAvailable = quickConnectAvailable
        self.enableCaseSensitiveItemIds = enableCaseSensitiveItemIds
        self.disableLiveTvChannelUserDataName = disableLiveTvChannelUserDataName
        self.metadataPath = metadataPath
        self.metadataNetworkPath = metadataNetworkPath
        self.preferredMetadataLanguage = preferredMetadataLanguage
        self.metadataCountryCode = metadataCountryCode
        self.sortReplaceCharacters = sortReplaceCharacters
        self.sortRemoveCharacters = sortRemoveCharacters
        self.sortRemoveWords = sortRemoveWords
        self.minResumePct = minResumePct
        self.maxResumePct = maxResumePct
        self.minResumeDurationSeconds = minResumeDurationSeconds
        self.minAudiobookResume = minAudiobookResume
        self.maxAudiobookResume = maxAudiobookResume
        self.libraryMonitorDelay = libraryMonitorDelay
        self.imageSavingConvention = imageSavingConvention
        self.metadataOptions = metadataOptions
        self.skipDeserializationForBasicTypes = skipDeserializationForBasicTypes
        self.serverName = serverName
        self.uICulture = uICulture
        self.saveMetadataHidden = saveMetadataHidden
        self.contentTypes = contentTypes
        self.remoteClientBitrateLimit = remoteClientBitrateLimit
        self.enableFolderView = enableFolderView
        self.enableGroupingIntoCollections = enableGroupingIntoCollections
        self.displaySpecialsWithinSeasons = displaySpecialsWithinSeasons
        self.codecsUsed = codecsUsed
        self.pluginRepositories = pluginRepositories
        self.enableExternalContentInSuggestions = enableExternalContentInSuggestions
        self.imageExtractionTimeoutMs = imageExtractionTimeoutMs
        self.pathSubstitutions = pathSubstitutions
        self.enableSlowResponseWarning = enableSlowResponseWarning
        self.slowResponseThresholdMs = slowResponseThresholdMs
        self.corsHosts = corsHosts
        self.activityLogRetentionDays = activityLogRetentionDays
        self.libraryScanFanoutConcurrency = libraryScanFanoutConcurrency
        self.libraryMetadataRefreshConcurrency = libraryMetadataRefreshConcurrency
        self.removeOldPlugins = removeOldPlugins
        self.allowClientLogUpload = allowClientLogUpload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case logFileRetentionDays = "LogFileRetentionDays"
        case isStartupWizardCompleted = "IsStartupWizardCompleted"
        case cachePath = "CachePath"
        case previousVersion = "PreviousVersion"
        case previousVersionStr = "PreviousVersionStr"
        case enableMetrics = "EnableMetrics"
        case enableNormalizedItemByNameIds = "EnableNormalizedItemByNameIds"
        case isPortAuthorized = "IsPortAuthorized"
        case quickConnectAvailable = "QuickConnectAvailable"
        case enableCaseSensitiveItemIds = "EnableCaseSensitiveItemIds"
        case disableLiveTvChannelUserDataName = "DisableLiveTvChannelUserDataName"
        case metadataPath = "MetadataPath"
        case metadataNetworkPath = "MetadataNetworkPath"
        case preferredMetadataLanguage = "PreferredMetadataLanguage"
        case metadataCountryCode = "MetadataCountryCode"
        case sortReplaceCharacters = "SortReplaceCharacters"
        case sortRemoveCharacters = "SortRemoveCharacters"
        case sortRemoveWords = "SortRemoveWords"
        case minResumePct = "MinResumePct"
        case maxResumePct = "MaxResumePct"
        case minResumeDurationSeconds = "MinResumeDurationSeconds"
        case minAudiobookResume = "MinAudiobookResume"
        case maxAudiobookResume = "MaxAudiobookResume"
        case libraryMonitorDelay = "LibraryMonitorDelay"
        case imageSavingConvention = "ImageSavingConvention"
        case metadataOptions = "MetadataOptions"
        case skipDeserializationForBasicTypes = "SkipDeserializationForBasicTypes"
        case serverName = "ServerName"
        case uICulture = "UICulture"
        case saveMetadataHidden = "SaveMetadataHidden"
        case contentTypes = "ContentTypes"
        case remoteClientBitrateLimit = "RemoteClientBitrateLimit"
        case enableFolderView = "EnableFolderView"
        case enableGroupingIntoCollections = "EnableGroupingIntoCollections"
        case displaySpecialsWithinSeasons = "DisplaySpecialsWithinSeasons"
        case codecsUsed = "CodecsUsed"
        case pluginRepositories = "PluginRepositories"
        case enableExternalContentInSuggestions = "EnableExternalContentInSuggestions"
        case imageExtractionTimeoutMs = "ImageExtractionTimeoutMs"
        case pathSubstitutions = "PathSubstitutions"
        case enableSlowResponseWarning = "EnableSlowResponseWarning"
        case slowResponseThresholdMs = "SlowResponseThresholdMs"
        case corsHosts = "CorsHosts"
        case activityLogRetentionDays = "ActivityLogRetentionDays"
        case libraryScanFanoutConcurrency = "LibraryScanFanoutConcurrency"
        case libraryMetadataRefreshConcurrency = "LibraryMetadataRefreshConcurrency"
        case removeOldPlugins = "RemoveOldPlugins"
        case allowClientLogUpload = "AllowClientLogUpload"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(logFileRetentionDays, forKey: .logFileRetentionDays)
        try container.encodeIfPresent(isStartupWizardCompleted, forKey: .isStartupWizardCompleted)
        try container.encodeIfPresent(cachePath, forKey: .cachePath)
        try container.encodeIfPresent(previousVersion, forKey: .previousVersion)
        try container.encodeIfPresent(previousVersionStr, forKey: .previousVersionStr)
        try container.encodeIfPresent(enableMetrics, forKey: .enableMetrics)
        try container.encodeIfPresent(enableNormalizedItemByNameIds, forKey: .enableNormalizedItemByNameIds)
        try container.encodeIfPresent(isPortAuthorized, forKey: .isPortAuthorized)
        try container.encodeIfPresent(quickConnectAvailable, forKey: .quickConnectAvailable)
        try container.encodeIfPresent(enableCaseSensitiveItemIds, forKey: .enableCaseSensitiveItemIds)
        try container.encodeIfPresent(disableLiveTvChannelUserDataName, forKey: .disableLiveTvChannelUserDataName)
        try container.encodeIfPresent(metadataPath, forKey: .metadataPath)
        try container.encodeIfPresent(metadataNetworkPath, forKey: .metadataNetworkPath)
        try container.encodeIfPresent(preferredMetadataLanguage, forKey: .preferredMetadataLanguage)
        try container.encodeIfPresent(metadataCountryCode, forKey: .metadataCountryCode)
        try container.encodeIfPresent(sortReplaceCharacters, forKey: .sortReplaceCharacters)
        try container.encodeIfPresent(sortRemoveCharacters, forKey: .sortRemoveCharacters)
        try container.encodeIfPresent(sortRemoveWords, forKey: .sortRemoveWords)
        try container.encodeIfPresent(minResumePct, forKey: .minResumePct)
        try container.encodeIfPresent(maxResumePct, forKey: .maxResumePct)
        try container.encodeIfPresent(minResumeDurationSeconds, forKey: .minResumeDurationSeconds)
        try container.encodeIfPresent(minAudiobookResume, forKey: .minAudiobookResume)
        try container.encodeIfPresent(maxAudiobookResume, forKey: .maxAudiobookResume)
        try container.encodeIfPresent(libraryMonitorDelay, forKey: .libraryMonitorDelay)
        try container.encodeIfPresent(imageSavingConvention, forKey: .imageSavingConvention)
        try container.encodeIfPresent(metadataOptions, forKey: .metadataOptions)
        try container.encodeIfPresent(skipDeserializationForBasicTypes, forKey: .skipDeserializationForBasicTypes)
        try container.encodeIfPresent(serverName, forKey: .serverName)
        try container.encodeIfPresent(uICulture, forKey: .uICulture)
        try container.encodeIfPresent(saveMetadataHidden, forKey: .saveMetadataHidden)
        try container.encodeIfPresent(contentTypes, forKey: .contentTypes)
        try container.encodeIfPresent(remoteClientBitrateLimit, forKey: .remoteClientBitrateLimit)
        try container.encodeIfPresent(enableFolderView, forKey: .enableFolderView)
        try container.encodeIfPresent(enableGroupingIntoCollections, forKey: .enableGroupingIntoCollections)
        try container.encodeIfPresent(displaySpecialsWithinSeasons, forKey: .displaySpecialsWithinSeasons)
        try container.encodeIfPresent(codecsUsed, forKey: .codecsUsed)
        try container.encodeIfPresent(pluginRepositories, forKey: .pluginRepositories)
        try container.encodeIfPresent(enableExternalContentInSuggestions, forKey: .enableExternalContentInSuggestions)
        try container.encodeIfPresent(imageExtractionTimeoutMs, forKey: .imageExtractionTimeoutMs)
        try container.encodeIfPresent(pathSubstitutions, forKey: .pathSubstitutions)
        try container.encodeIfPresent(enableSlowResponseWarning, forKey: .enableSlowResponseWarning)
        try container.encodeIfPresent(slowResponseThresholdMs, forKey: .slowResponseThresholdMs)
        try container.encodeIfPresent(corsHosts, forKey: .corsHosts)
        try container.encodeIfPresent(activityLogRetentionDays, forKey: .activityLogRetentionDays)
        try container.encodeIfPresent(libraryScanFanoutConcurrency, forKey: .libraryScanFanoutConcurrency)
        try container.encodeIfPresent(libraryMetadataRefreshConcurrency, forKey: .libraryMetadataRefreshConcurrency)
        try container.encodeIfPresent(removeOldPlugins, forKey: .removeOldPlugins)
        try container.encodeIfPresent(allowClientLogUpload, forKey: .allowClientLogUpload)
    }
}

