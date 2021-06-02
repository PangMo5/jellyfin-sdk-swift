//
// DefaultDirectoryBrowserInfoDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Default directory browser info. */
public struct DefaultDirectoryBrowserInfoDto: Codable, Hashable {

    /** Gets or sets the path. */
    public var path: String?

    public init(path: String? = nil) {
        self.path = path
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path = "Path"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(path, forKey: .path)
    }



}