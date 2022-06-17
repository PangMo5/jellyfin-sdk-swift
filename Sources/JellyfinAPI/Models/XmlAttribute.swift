//
// XmlAttribute.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines the MediaBrowser.Model.Dlna.XmlAttribute. */
public struct XmlAttribute: Codable, Hashable {

    /** Gets or sets the name of the attribute. */
    public var name: String?
    /** Gets or sets the value of the attribute. */
    public var value: String?

    public init(name: String? = nil, value: String? = nil) {
        self.name = name
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case value = "Value"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(value, forKey: .value)
    }
}
