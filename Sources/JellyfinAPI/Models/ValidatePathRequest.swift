//
// ValidatePathRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Validate path object. */
public struct ValidatePathRequest: Codable, Hashable {

    /** Gets or sets a value indicating whether validate if path is writable. */
    public var validateWritable: Bool?
    /** Gets or sets the path. */
    public var path: String?
    /** Gets or sets is path file. */
    public var isFile: Bool?

    public init(validateWritable: Bool? = nil, path: String? = nil, isFile: Bool? = nil) {
        self.validateWritable = validateWritable
        self.path = path
        self.isFile = isFile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case validateWritable = "ValidateWritable"
        case path = "Path"
        case isFile = "IsFile"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(validateWritable, forKey: .validateWritable)
        try encoderContainer.encodeIfPresent(path, forKey: .path)
        try encoderContainer.encodeIfPresent(isFile, forKey: .isFile)
    }
}
