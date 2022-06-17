//
// AddVirtualFolderDtoLibraryOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Gets or sets library options. */
public struct AddVirtualFolderDtoLibraryOptions: Codable, JSONEncodable, Hashable {

    public var enablePhotos: Bool?
    public var enableRealtimeMonitor: Bool?
    public var enableChapterImageExtraction: Bool?
    public var extractChapterImagesDuringLibraryScan: Bool?
    public var pathInfos: [MediaPathInfo]?
    public var saveLocalMetadata: Bool?
    @available(*, deprecated, message: "This property is deprecated.")
    public var enableInternetProviders: Bool?
    public var enableAutomaticSeriesGrouping: Bool?
    public var enableEmbeddedTitles: Bool?
    public var enableEmbeddedEpisodeInfos: Bool?
    public var automaticRefreshIntervalDays: Int?
    /** Gets or sets the preferred metadata language. */
    public var preferredMetadataLanguage: String?
    /** Gets or sets the metadata country code. */
    public var metadataCountryCode: String?
    public var seasonZeroDisplayName: String?
    public var metadataSavers: [String]?
    public var disabledLocalMetadataReaders: [String]?
    public var localMetadataReaderOrder: [String]?
    public var disabledSubtitleFetchers: [String]?
    public var subtitleFetcherOrder: [String]?
    public var skipSubtitlesIfEmbeddedSubtitlesPresent: Bool?
    public var skipSubtitlesIfAudioTrackMatches: Bool?
    public var subtitleDownloadLanguages: [String]?
    public var requirePerfectSubtitleMatch: Bool?
    public var saveSubtitlesWithMedia: Bool?
    public var automaticallyAddToCollection: Bool?
    /** An enum representing the options to disable embedded subs. */
    public var allowEmbeddedSubtitles: EmbeddedSubtitleOptions?
    public var typeOptions: [TypeOptions]?

    public init(enablePhotos: Bool? = nil, enableRealtimeMonitor: Bool? = nil, enableChapterImageExtraction: Bool? = nil, extractChapterImagesDuringLibraryScan: Bool? = nil, pathInfos: [MediaPathInfo]? = nil, saveLocalMetadata: Bool? = nil, enableInternetProviders: Bool? = nil, enableAutomaticSeriesGrouping: Bool? = nil, enableEmbeddedTitles: Bool? = nil, enableEmbeddedEpisodeInfos: Bool? = nil, automaticRefreshIntervalDays: Int? = nil, preferredMetadataLanguage: String? = nil, metadataCountryCode: String? = nil, seasonZeroDisplayName: String? = nil, metadataSavers: [String]? = nil, disabledLocalMetadataReaders: [String]? = nil, localMetadataReaderOrder: [String]? = nil, disabledSubtitleFetchers: [String]? = nil, subtitleFetcherOrder: [String]? = nil, skipSubtitlesIfEmbeddedSubtitlesPresent: Bool? = nil, skipSubtitlesIfAudioTrackMatches: Bool? = nil, subtitleDownloadLanguages: [String]? = nil, requirePerfectSubtitleMatch: Bool? = nil, saveSubtitlesWithMedia: Bool? = nil, automaticallyAddToCollection: Bool? = nil, allowEmbeddedSubtitles: EmbeddedSubtitleOptions? = nil, typeOptions: [TypeOptions]? = nil) {
        self.enablePhotos = enablePhotos
        self.enableRealtimeMonitor = enableRealtimeMonitor
        self.enableChapterImageExtraction = enableChapterImageExtraction
        self.extractChapterImagesDuringLibraryScan = extractChapterImagesDuringLibraryScan
        self.pathInfos = pathInfos
        self.saveLocalMetadata = saveLocalMetadata
        self.enableInternetProviders = enableInternetProviders
        self.enableAutomaticSeriesGrouping = enableAutomaticSeriesGrouping
        self.enableEmbeddedTitles = enableEmbeddedTitles
        self.enableEmbeddedEpisodeInfos = enableEmbeddedEpisodeInfos
        self.automaticRefreshIntervalDays = automaticRefreshIntervalDays
        self.preferredMetadataLanguage = preferredMetadataLanguage
        self.metadataCountryCode = metadataCountryCode
        self.seasonZeroDisplayName = seasonZeroDisplayName
        self.metadataSavers = metadataSavers
        self.disabledLocalMetadataReaders = disabledLocalMetadataReaders
        self.localMetadataReaderOrder = localMetadataReaderOrder
        self.disabledSubtitleFetchers = disabledSubtitleFetchers
        self.subtitleFetcherOrder = subtitleFetcherOrder
        self.skipSubtitlesIfEmbeddedSubtitlesPresent = skipSubtitlesIfEmbeddedSubtitlesPresent
        self.skipSubtitlesIfAudioTrackMatches = skipSubtitlesIfAudioTrackMatches
        self.subtitleDownloadLanguages = subtitleDownloadLanguages
        self.requirePerfectSubtitleMatch = requirePerfectSubtitleMatch
        self.saveSubtitlesWithMedia = saveSubtitlesWithMedia
        self.automaticallyAddToCollection = automaticallyAddToCollection
        self.allowEmbeddedSubtitles = allowEmbeddedSubtitles
        self.typeOptions = typeOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enablePhotos = "EnablePhotos"
        case enableRealtimeMonitor = "EnableRealtimeMonitor"
        case enableChapterImageExtraction = "EnableChapterImageExtraction"
        case extractChapterImagesDuringLibraryScan = "ExtractChapterImagesDuringLibraryScan"
        case pathInfos = "PathInfos"
        case saveLocalMetadata = "SaveLocalMetadata"
        case enableInternetProviders = "EnableInternetProviders"
        case enableAutomaticSeriesGrouping = "EnableAutomaticSeriesGrouping"
        case enableEmbeddedTitles = "EnableEmbeddedTitles"
        case enableEmbeddedEpisodeInfos = "EnableEmbeddedEpisodeInfos"
        case automaticRefreshIntervalDays = "AutomaticRefreshIntervalDays"
        case preferredMetadataLanguage = "PreferredMetadataLanguage"
        case metadataCountryCode = "MetadataCountryCode"
        case seasonZeroDisplayName = "SeasonZeroDisplayName"
        case metadataSavers = "MetadataSavers"
        case disabledLocalMetadataReaders = "DisabledLocalMetadataReaders"
        case localMetadataReaderOrder = "LocalMetadataReaderOrder"
        case disabledSubtitleFetchers = "DisabledSubtitleFetchers"
        case subtitleFetcherOrder = "SubtitleFetcherOrder"
        case skipSubtitlesIfEmbeddedSubtitlesPresent = "SkipSubtitlesIfEmbeddedSubtitlesPresent"
        case skipSubtitlesIfAudioTrackMatches = "SkipSubtitlesIfAudioTrackMatches"
        case subtitleDownloadLanguages = "SubtitleDownloadLanguages"
        case requirePerfectSubtitleMatch = "RequirePerfectSubtitleMatch"
        case saveSubtitlesWithMedia = "SaveSubtitlesWithMedia"
        case automaticallyAddToCollection = "AutomaticallyAddToCollection"
        case allowEmbeddedSubtitles = "AllowEmbeddedSubtitles"
        case typeOptions = "TypeOptions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enablePhotos, forKey: .enablePhotos)
        try container.encodeIfPresent(enableRealtimeMonitor, forKey: .enableRealtimeMonitor)
        try container.encodeIfPresent(enableChapterImageExtraction, forKey: .enableChapterImageExtraction)
        try container.encodeIfPresent(extractChapterImagesDuringLibraryScan, forKey: .extractChapterImagesDuringLibraryScan)
        try container.encodeIfPresent(pathInfos, forKey: .pathInfos)
        try container.encodeIfPresent(saveLocalMetadata, forKey: .saveLocalMetadata)
        try container.encodeIfPresent(enableInternetProviders, forKey: .enableInternetProviders)
        try container.encodeIfPresent(enableAutomaticSeriesGrouping, forKey: .enableAutomaticSeriesGrouping)
        try container.encodeIfPresent(enableEmbeddedTitles, forKey: .enableEmbeddedTitles)
        try container.encodeIfPresent(enableEmbeddedEpisodeInfos, forKey: .enableEmbeddedEpisodeInfos)
        try container.encodeIfPresent(automaticRefreshIntervalDays, forKey: .automaticRefreshIntervalDays)
        try container.encodeIfPresent(preferredMetadataLanguage, forKey: .preferredMetadataLanguage)
        try container.encodeIfPresent(metadataCountryCode, forKey: .metadataCountryCode)
        try container.encodeIfPresent(seasonZeroDisplayName, forKey: .seasonZeroDisplayName)
        try container.encodeIfPresent(metadataSavers, forKey: .metadataSavers)
        try container.encodeIfPresent(disabledLocalMetadataReaders, forKey: .disabledLocalMetadataReaders)
        try container.encodeIfPresent(localMetadataReaderOrder, forKey: .localMetadataReaderOrder)
        try container.encodeIfPresent(disabledSubtitleFetchers, forKey: .disabledSubtitleFetchers)
        try container.encodeIfPresent(subtitleFetcherOrder, forKey: .subtitleFetcherOrder)
        try container.encodeIfPresent(skipSubtitlesIfEmbeddedSubtitlesPresent, forKey: .skipSubtitlesIfEmbeddedSubtitlesPresent)
        try container.encodeIfPresent(skipSubtitlesIfAudioTrackMatches, forKey: .skipSubtitlesIfAudioTrackMatches)
        try container.encodeIfPresent(subtitleDownloadLanguages, forKey: .subtitleDownloadLanguages)
        try container.encodeIfPresent(requirePerfectSubtitleMatch, forKey: .requirePerfectSubtitleMatch)
        try container.encodeIfPresent(saveSubtitlesWithMedia, forKey: .saveSubtitlesWithMedia)
        try container.encodeIfPresent(automaticallyAddToCollection, forKey: .automaticallyAddToCollection)
        try container.encodeIfPresent(allowEmbeddedSubtitles, forKey: .allowEmbeddedSubtitles)
        try container.encodeIfPresent(typeOptions, forKey: .typeOptions)
    }
}
