//
// ImageProviderInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class ImageProviderInfo. */
public struct ImageProviderInfo: Codable, JSONEncodable, Hashable {

    /** Gets the name. */
    public var name: String?
    /** Gets the supported image types. */
    public var supportedImages: [ImageType]?

    public init(name: String? = nil, supportedImages: [ImageType]? = nil) {
        self.name = name
        self.supportedImages = supportedImages
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case supportedImages = "SupportedImages"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(supportedImages, forKey: .supportedImages)
    }
}

