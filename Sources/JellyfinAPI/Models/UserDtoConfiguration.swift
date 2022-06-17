//
// UserDtoConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Gets or sets the configuration. */
public struct UserDtoConfiguration: Codable, JSONEncodable, Hashable {

    /** Gets or sets the audio language preference. */
    public var audioLanguagePreference: String?
    /** Gets or sets a value indicating whether [play default audio track]. */
    public var playDefaultAudioTrack: Bool?
    /** Gets or sets the subtitle language preference. */
    public var subtitleLanguagePreference: String?
    public var displayMissingEpisodes: Bool?
    public var groupedFolders: [String]?
    /** An enum representing a subtitle playback mode. */
    public var subtitleMode: SubtitlePlaybackMode?
    public var displayCollectionsView: Bool?
    public var enableLocalPassword: Bool?
    public var orderedViews: [String]?
    public var latestItemsExcludes: [String]?
    public var myMediaExcludes: [String]?
    public var hidePlayedInLatest: Bool?
    public var rememberAudioSelections: Bool?
    public var rememberSubtitleSelections: Bool?
    public var enableNextEpisodeAutoPlay: Bool?

    public init(audioLanguagePreference: String? = nil, playDefaultAudioTrack: Bool? = nil, subtitleLanguagePreference: String? = nil, displayMissingEpisodes: Bool? = nil, groupedFolders: [String]? = nil, subtitleMode: SubtitlePlaybackMode? = nil, displayCollectionsView: Bool? = nil, enableLocalPassword: Bool? = nil, orderedViews: [String]? = nil, latestItemsExcludes: [String]? = nil, myMediaExcludes: [String]? = nil, hidePlayedInLatest: Bool? = nil, rememberAudioSelections: Bool? = nil, rememberSubtitleSelections: Bool? = nil, enableNextEpisodeAutoPlay: Bool? = nil) {
        self.audioLanguagePreference = audioLanguagePreference
        self.playDefaultAudioTrack = playDefaultAudioTrack
        self.subtitleLanguagePreference = subtitleLanguagePreference
        self.displayMissingEpisodes = displayMissingEpisodes
        self.groupedFolders = groupedFolders
        self.subtitleMode = subtitleMode
        self.displayCollectionsView = displayCollectionsView
        self.enableLocalPassword = enableLocalPassword
        self.orderedViews = orderedViews
        self.latestItemsExcludes = latestItemsExcludes
        self.myMediaExcludes = myMediaExcludes
        self.hidePlayedInLatest = hidePlayedInLatest
        self.rememberAudioSelections = rememberAudioSelections
        self.rememberSubtitleSelections = rememberSubtitleSelections
        self.enableNextEpisodeAutoPlay = enableNextEpisodeAutoPlay
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case audioLanguagePreference = "AudioLanguagePreference"
        case playDefaultAudioTrack = "PlayDefaultAudioTrack"
        case subtitleLanguagePreference = "SubtitleLanguagePreference"
        case displayMissingEpisodes = "DisplayMissingEpisodes"
        case groupedFolders = "GroupedFolders"
        case subtitleMode = "SubtitleMode"
        case displayCollectionsView = "DisplayCollectionsView"
        case enableLocalPassword = "EnableLocalPassword"
        case orderedViews = "OrderedViews"
        case latestItemsExcludes = "LatestItemsExcludes"
        case myMediaExcludes = "MyMediaExcludes"
        case hidePlayedInLatest = "HidePlayedInLatest"
        case rememberAudioSelections = "RememberAudioSelections"
        case rememberSubtitleSelections = "RememberSubtitleSelections"
        case enableNextEpisodeAutoPlay = "EnableNextEpisodeAutoPlay"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(audioLanguagePreference, forKey: .audioLanguagePreference)
        try container.encodeIfPresent(playDefaultAudioTrack, forKey: .playDefaultAudioTrack)
        try container.encodeIfPresent(subtitleLanguagePreference, forKey: .subtitleLanguagePreference)
        try container.encodeIfPresent(displayMissingEpisodes, forKey: .displayMissingEpisodes)
        try container.encodeIfPresent(groupedFolders, forKey: .groupedFolders)
        try container.encodeIfPresent(subtitleMode, forKey: .subtitleMode)
        try container.encodeIfPresent(displayCollectionsView, forKey: .displayCollectionsView)
        try container.encodeIfPresent(enableLocalPassword, forKey: .enableLocalPassword)
        try container.encodeIfPresent(orderedViews, forKey: .orderedViews)
        try container.encodeIfPresent(latestItemsExcludes, forKey: .latestItemsExcludes)
        try container.encodeIfPresent(myMediaExcludes, forKey: .myMediaExcludes)
        try container.encodeIfPresent(hidePlayedInLatest, forKey: .hidePlayedInLatest)
        try container.encodeIfPresent(rememberAudioSelections, forKey: .rememberAudioSelections)
        try container.encodeIfPresent(rememberSubtitleSelections, forKey: .rememberSubtitleSelections)
        try container.encodeIfPresent(enableNextEpisodeAutoPlay, forKey: .enableNextEpisodeAutoPlay)
    }
}
