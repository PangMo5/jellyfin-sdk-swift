//
// MediaUpdateInfoPathDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The media update info path. */
public struct MediaUpdateInfoPathDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets media path. */
    public var path: String?
    /** Gets or sets media update type.  Created, Modified, Deleted. */
    public var updateType: String?

    public init(path: String? = nil, updateType: String? = nil) {
        self.path = path
        self.updateType = updateType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path = "Path"
        case updateType = "UpdateType"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(updateType, forKey: .updateType)
    }
}

