//
// FileSystemEntryInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class FileSystemEntryInfo. */
public struct FileSystemEntryInfo: Codable, Hashable {

    /** Gets the name. */
    public var name: String?
    /** Gets the path. */
    public var path: String?
    /** Gets the type. */
    public var type: FileSystemEntryType?

    public init(name: String? = nil, path: String? = nil, type: FileSystemEntryType? = nil) {
        self.name = name
        self.path = path
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case path = "Path"
        case type = "Type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(path, forKey: .path)
        try encoderContainer.encodeIfPresent(type, forKey: .type)
    }
}
