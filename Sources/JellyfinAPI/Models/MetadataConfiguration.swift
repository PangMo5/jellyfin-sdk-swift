//
// MetadataConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MetadataConfiguration: Codable, JSONEncodable, Hashable {

    public var useFileCreationTimeForDateAdded: Bool?

    public init(useFileCreationTimeForDateAdded: Bool? = nil) {
        self.useFileCreationTimeForDateAdded = useFileCreationTimeForDateAdded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case useFileCreationTimeForDateAdded = "UseFileCreationTimeForDateAdded"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(useFileCreationTimeForDateAdded, forKey: .useFileCreationTimeForDateAdded)
    }
}

