//
// SpecialViewOptionDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Special view option dto. */
public struct SpecialViewOptionDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets view option name. */
    public var name: String?
    /** Gets or sets view option id. */
    public var id: String?

    public init(name: String? = nil, id: String? = nil) {
        self.name = name
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case id = "Id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(id, forKey: .id)
    }
}

