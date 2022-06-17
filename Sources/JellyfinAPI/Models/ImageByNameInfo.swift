//
// ImageByNameInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ImageByNameInfo: Codable, JSONEncodable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the theme. */
    public var theme: String?
    /** Gets or sets the context. */
    public var context: String?
    /** Gets or sets the length of the file. */
    public var fileLength: Int64?
    /** Gets or sets the format. */
    public var format: String?

    public init(name: String? = nil, theme: String? = nil, context: String? = nil, fileLength: Int64? = nil, format: String? = nil) {
        self.name = name
        self.theme = theme
        self.context = context
        self.fileLength = fileLength
        self.format = format
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case theme = "Theme"
        case context = "Context"
        case fileLength = "FileLength"
        case format = "Format"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(theme, forKey: .theme)
        try container.encodeIfPresent(context, forKey: .context)
        try container.encodeIfPresent(fileLength, forKey: .fileLength)
        try container.encodeIfPresent(format, forKey: .format)
    }
}

