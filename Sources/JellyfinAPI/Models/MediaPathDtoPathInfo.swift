//
// MediaPathDtoPathInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Gets or sets the path info. */
public struct MediaPathDtoPathInfo: Codable, Hashable {

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
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(path, forKey: .path)
        try encoderContainer.encodeIfPresent(networkPath, forKey: .networkPath)
    }
}
