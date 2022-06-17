//
// SubtitleOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubtitleOptions: Codable, JSONEncodable, Hashable {

    public var skipIfEmbeddedSubtitlesPresent: Bool?
    public var skipIfAudioTrackMatches: Bool?
    public var downloadLanguages: [String]?
    public var downloadMovieSubtitles: Bool?
    public var downloadEpisodeSubtitles: Bool?
    public var openSubtitlesUsername: String?
    public var openSubtitlesPasswordHash: String?
    public var isOpenSubtitleVipAccount: Bool?
    public var requirePerfectMatch: Bool?

    public init(skipIfEmbeddedSubtitlesPresent: Bool? = nil, skipIfAudioTrackMatches: Bool? = nil, downloadLanguages: [String]? = nil, downloadMovieSubtitles: Bool? = nil, downloadEpisodeSubtitles: Bool? = nil, openSubtitlesUsername: String? = nil, openSubtitlesPasswordHash: String? = nil, isOpenSubtitleVipAccount: Bool? = nil, requirePerfectMatch: Bool? = nil) {
        self.skipIfEmbeddedSubtitlesPresent = skipIfEmbeddedSubtitlesPresent
        self.skipIfAudioTrackMatches = skipIfAudioTrackMatches
        self.downloadLanguages = downloadLanguages
        self.downloadMovieSubtitles = downloadMovieSubtitles
        self.downloadEpisodeSubtitles = downloadEpisodeSubtitles
        self.openSubtitlesUsername = openSubtitlesUsername
        self.openSubtitlesPasswordHash = openSubtitlesPasswordHash
        self.isOpenSubtitleVipAccount = isOpenSubtitleVipAccount
        self.requirePerfectMatch = requirePerfectMatch
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case skipIfEmbeddedSubtitlesPresent = "SkipIfEmbeddedSubtitlesPresent"
        case skipIfAudioTrackMatches = "SkipIfAudioTrackMatches"
        case downloadLanguages = "DownloadLanguages"
        case downloadMovieSubtitles = "DownloadMovieSubtitles"
        case downloadEpisodeSubtitles = "DownloadEpisodeSubtitles"
        case openSubtitlesUsername = "OpenSubtitlesUsername"
        case openSubtitlesPasswordHash = "OpenSubtitlesPasswordHash"
        case isOpenSubtitleVipAccount = "IsOpenSubtitleVipAccount"
        case requirePerfectMatch = "RequirePerfectMatch"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(skipIfEmbeddedSubtitlesPresent, forKey: .skipIfEmbeddedSubtitlesPresent)
        try container.encodeIfPresent(skipIfAudioTrackMatches, forKey: .skipIfAudioTrackMatches)
        try container.encodeIfPresent(downloadLanguages, forKey: .downloadLanguages)
        try container.encodeIfPresent(downloadMovieSubtitles, forKey: .downloadMovieSubtitles)
        try container.encodeIfPresent(downloadEpisodeSubtitles, forKey: .downloadEpisodeSubtitles)
        try container.encodeIfPresent(openSubtitlesUsername, forKey: .openSubtitlesUsername)
        try container.encodeIfPresent(openSubtitlesPasswordHash, forKey: .openSubtitlesPasswordHash)
        try container.encodeIfPresent(isOpenSubtitleVipAccount, forKey: .isOpenSubtitleVipAccount)
        try container.encodeIfPresent(requirePerfectMatch, forKey: .requirePerfectMatch)
    }
}
