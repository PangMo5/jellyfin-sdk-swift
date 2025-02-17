//
// SessionInfoFullNowPlayingItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class BaseItem. */
public struct SessionInfoFullNowPlayingItem: Codable, JSONEncodable, Hashable {

    public var size: Int64?
    public var container: String?
    public var isHD: Bool?
    public var isShortcut: Bool?
    public var shortcutPath: String?
    public var width: Int?
    public var height: Int?
    public var extraIds: [String]?
    public var dateLastSaved: Date?
    /** Gets or sets the remote trailers. */
    public var remoteTrailers: [MediaUrl]?
    public var supportsExternalTransfer: Bool?

    public init(size: Int64? = nil, container: String? = nil, isHD: Bool? = nil, isShortcut: Bool? = nil, shortcutPath: String? = nil, width: Int? = nil, height: Int? = nil, extraIds: [String]? = nil, dateLastSaved: Date? = nil, remoteTrailers: [MediaUrl]? = nil, supportsExternalTransfer: Bool? = nil) {
        self.size = size
        self.container = container
        self.isHD = isHD
        self.isShortcut = isShortcut
        self.shortcutPath = shortcutPath
        self.width = width
        self.height = height
        self.extraIds = extraIds
        self.dateLastSaved = dateLastSaved
        self.remoteTrailers = remoteTrailers
        self.supportsExternalTransfer = supportsExternalTransfer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case size = "Size"
        case container = "Container"
        case isHD = "IsHD"
        case isShortcut = "IsShortcut"
        case shortcutPath = "ShortcutPath"
        case width = "Width"
        case height = "Height"
        case extraIds = "ExtraIds"
        case dateLastSaved = "DateLastSaved"
        case remoteTrailers = "RemoteTrailers"
        case supportsExternalTransfer = "SupportsExternalTransfer"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(container, forKey: .container)
        try container.encodeIfPresent(isHD, forKey: .isHD)
        try container.encodeIfPresent(isShortcut, forKey: .isShortcut)
        try container.encodeIfPresent(shortcutPath, forKey: .shortcutPath)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(extraIds, forKey: .extraIds)
        try container.encodeIfPresent(dateLastSaved, forKey: .dateLastSaved)
        try container.encodeIfPresent(remoteTrailers, forKey: .remoteTrailers)
        try container.encodeIfPresent(supportsExternalTransfer, forKey: .supportsExternalTransfer)
    }
}

