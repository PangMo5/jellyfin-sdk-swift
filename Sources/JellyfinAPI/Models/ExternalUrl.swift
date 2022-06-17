//
// ExternalUrl.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ExternalUrl: Codable, JSONEncodable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the type of the item. */
    public var url: String?

    public init(name: String? = nil, url: String? = nil) {
        self.name = name
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case url = "Url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(url, forKey: .url)
    }
}

