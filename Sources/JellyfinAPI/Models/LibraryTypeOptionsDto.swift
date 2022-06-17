//
// LibraryTypeOptionsDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Library type options dto. */
public struct LibraryTypeOptionsDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets the type. */
    public var type: String?
    /** Gets or sets the metadata fetchers. */
    public var metadataFetchers: [LibraryOptionInfoDto]?
    /** Gets or sets the image fetchers. */
    public var imageFetchers: [LibraryOptionInfoDto]?
    /** Gets or sets the supported image types. */
    public var supportedImageTypes: [ImageType]?
    /** Gets or sets the default image options. */
    public var defaultImageOptions: [ImageOption]?

    public init(type: String? = nil, metadataFetchers: [LibraryOptionInfoDto]? = nil, imageFetchers: [LibraryOptionInfoDto]? = nil, supportedImageTypes: [ImageType]? = nil, defaultImageOptions: [ImageOption]? = nil) {
        self.type = type
        self.metadataFetchers = metadataFetchers
        self.imageFetchers = imageFetchers
        self.supportedImageTypes = supportedImageTypes
        self.defaultImageOptions = defaultImageOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "Type"
        case metadataFetchers = "MetadataFetchers"
        case imageFetchers = "ImageFetchers"
        case supportedImageTypes = "SupportedImageTypes"
        case defaultImageOptions = "DefaultImageOptions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(metadataFetchers, forKey: .metadataFetchers)
        try container.encodeIfPresent(imageFetchers, forKey: .imageFetchers)
        try container.encodeIfPresent(supportedImageTypes, forKey: .supportedImageTypes)
        try container.encodeIfPresent(defaultImageOptions, forKey: .defaultImageOptions)
    }
}

