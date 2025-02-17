//
// QueryFilters.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct QueryFilters: Codable, JSONEncodable, Hashable {

    public var genres: [NameGuidPair]?
    public var tags: [String]?

    public init(genres: [NameGuidPair]? = nil, tags: [String]? = nil) {
        self.genres = genres
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case genres = "Genres"
        case tags = "Tags"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(genres, forKey: .genres)
        try container.encodeIfPresent(tags, forKey: .tags)
    }
}

