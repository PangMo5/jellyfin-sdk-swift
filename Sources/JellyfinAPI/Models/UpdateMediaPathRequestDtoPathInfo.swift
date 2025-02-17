//
// UpdateMediaPathRequestDtoPathInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Gets or sets library folder path information. */
public struct UpdateMediaPathRequestDtoPathInfo: Codable, JSONEncodable, Hashable {

    public var path: String?
    public var networkPath: String?

    public init(path: String? = nil, networkPath: String? = nil) {
        self.path = path
        self.networkPath = networkPath
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path = "Path"
        case networkPath = "NetworkPath"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(networkPath, forKey: .networkPath)
    }
}

