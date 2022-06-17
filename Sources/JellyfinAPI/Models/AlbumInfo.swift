//
// AlbumInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AlbumInfo: Codable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the original title. */
    public var originalTitle: String?
    /** Gets or sets the path. */
    public var path: String?
    /** Gets or sets the metadata language. */
    public var metadataLanguage: String?
    /** Gets or sets the metadata country code. */
    public var metadataCountryCode: String?
    /** Gets or sets the provider ids. */
    public var providerIds: [String: String]?
    /** Gets or sets the year. */
    public var year: Int?
    public var indexNumber: Int?
    public var parentIndexNumber: Int?
    public var premiereDate: Date?
    public var isAutomated: Bool?
    /** Gets or sets the album artist. */
    public var albumArtists: [String]?
    /** Gets or sets the artist provider ids. */
    public var artistProviderIds: [String: String]?
    public var songInfos: [SongInfo]?

    public init(name: String? = nil, originalTitle: String? = nil, path: String? = nil, metadataLanguage: String? = nil, metadataCountryCode: String? = nil, providerIds: [String: String]? = nil, year: Int? = nil, indexNumber: Int? = nil, parentIndexNumber: Int? = nil, premiereDate: Date? = nil, isAutomated: Bool? = nil, albumArtists: [String]? = nil, artistProviderIds: [String: String]? = nil, songInfos: [SongInfo]? = nil) {
        self.name = name
        self.originalTitle = originalTitle
        self.path = path
        self.metadataLanguage = metadataLanguage
        self.metadataCountryCode = metadataCountryCode
        self.providerIds = providerIds
        self.year = year
        self.indexNumber = indexNumber
        self.parentIndexNumber = parentIndexNumber
        self.premiereDate = premiereDate
        self.isAutomated = isAutomated
        self.albumArtists = albumArtists
        self.artistProviderIds = artistProviderIds
        self.songInfos = songInfos
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case originalTitle = "OriginalTitle"
        case path = "Path"
        case metadataLanguage = "MetadataLanguage"
        case metadataCountryCode = "MetadataCountryCode"
        case providerIds = "ProviderIds"
        case year = "Year"
        case indexNumber = "IndexNumber"
        case parentIndexNumber = "ParentIndexNumber"
        case premiereDate = "PremiereDate"
        case isAutomated = "IsAutomated"
        case albumArtists = "AlbumArtists"
        case artistProviderIds = "ArtistProviderIds"
        case songInfos = "SongInfos"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(originalTitle, forKey: .originalTitle)
        try encoderContainer.encodeIfPresent(path, forKey: .path)
        try encoderContainer.encodeIfPresent(metadataLanguage, forKey: .metadataLanguage)
        try encoderContainer.encodeIfPresent(metadataCountryCode, forKey: .metadataCountryCode)
        try encoderContainer.encodeIfPresent(providerIds, forKey: .providerIds)
        try encoderContainer.encodeIfPresent(year, forKey: .year)
        try encoderContainer.encodeIfPresent(indexNumber, forKey: .indexNumber)
        try encoderContainer.encodeIfPresent(parentIndexNumber, forKey: .parentIndexNumber)
        try encoderContainer.encodeIfPresent(premiereDate, forKey: .premiereDate)
        try encoderContainer.encodeIfPresent(isAutomated, forKey: .isAutomated)
        try encoderContainer.encodeIfPresent(albumArtists, forKey: .albumArtists)
        try encoderContainer.encodeIfPresent(artistProviderIds, forKey: .artistProviderIds)
        try encoderContainer.encodeIfPresent(songInfos, forKey: .songInfos)
    }
}
