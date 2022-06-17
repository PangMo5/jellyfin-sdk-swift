//
// NewGroupRequestDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class NewGroupRequestDto. */
public struct NewGroupRequestDto: Codable, Hashable {

    /** Gets or sets the group name. */
    public var groupName: String?

    public init(groupName: String? = nil) {
        self.groupName = groupName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groupName = "GroupName"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(groupName, forKey: .groupName)
    }
}
