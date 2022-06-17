//
// ExternalIdInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents the external id information for serialization to the client. */
public struct ExternalIdInfo: Codable, JSONEncodable, Hashable {

    /** Gets or sets the display name of the external id provider (IE: IMDB, MusicBrainz, etc). */
    public var name: String?
    /** Gets or sets the unique key for this id. This key should be unique across all providers. */
    public var key: String?
    /** Gets or sets the specific media type for this id. This is used to distinguish between the different  external id types for providers with multiple ids.  A null value indicates there is no specific media type associated with the external id, or this is the  default id for the external provider so there is no need to specify a type. */
    public var type: ExternalIdMediaType?
    /** Gets or sets the URL format string. */
    public var urlFormatString: String?

    public init(name: String? = nil, key: String? = nil, type: ExternalIdMediaType? = nil, urlFormatString: String? = nil) {
        self.name = name
        self.key = key
        self.type = type
        self.urlFormatString = urlFormatString
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case key = "Key"
        case type = "Type"
        case urlFormatString = "UrlFormatString"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(urlFormatString, forKey: .urlFormatString)
    }
}

