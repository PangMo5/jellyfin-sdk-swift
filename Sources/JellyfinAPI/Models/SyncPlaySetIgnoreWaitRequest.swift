//
// SyncPlaySetIgnoreWaitRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class IgnoreWaitRequestDto. */
public struct SyncPlaySetIgnoreWaitRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets a value indicating whether the client should be ignored. */
    public var ignoreWait: Bool?

    public init(ignoreWait: Bool? = nil) {
        self.ignoreWait = ignoreWait
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ignoreWait = "IgnoreWait"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ignoreWait, forKey: .ignoreWait)
    }
}

