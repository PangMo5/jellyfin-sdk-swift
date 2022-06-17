//
// RepositoryInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class RepositoryInfo. */
public struct RepositoryInfo: Codable, JSONEncodable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the URL. */
    public var url: String?
    /** Gets or sets a value indicating whether the repository is enabled. */
    public var enabled: Bool?

    public init(name: String? = nil, url: String? = nil, enabled: Bool? = nil) {
        self.name = name
        self.url = url
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case url = "Url"
        case enabled = "Enabled"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(enabled, forKey: .enabled)
    }
}

