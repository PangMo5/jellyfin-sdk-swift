//
// SubtitleProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubtitleProfile: Codable, JSONEncodable, Hashable {

    public var format: String?
    /** Delivery method to use during playback of a specific subtitle format. */
    public var method: SubtitleDeliveryMethod?
    public var didlMode: String?
    public var language: String?
    public var container: String?

    public init(format: String? = nil, method: SubtitleDeliveryMethod? = nil, didlMode: String? = nil, language: String? = nil, container: String? = nil) {
        self.format = format
        self.method = method
        self.didlMode = didlMode
        self.language = language
        self.container = container
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case format = "Format"
        case method = "Method"
        case didlMode = "DidlMode"
        case language = "Language"
        case container = "Container"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(format, forKey: .format)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(didlMode, forKey: .didlMode)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(container, forKey: .container)
    }
}

