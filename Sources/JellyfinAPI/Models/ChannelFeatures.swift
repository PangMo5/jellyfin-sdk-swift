//
// ChannelFeatures.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelFeatures: Codable, JSONEncodable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the identifier. */
    public var id: String?
    /** Gets or sets a value indicating whether this instance can search. */
    public var canSearch: Bool?
    /** Gets or sets the media types. */
    public var mediaTypes: [ChannelMediaType]?
    /** Gets or sets the content types. */
    public var contentTypes: [ChannelMediaContentType]?
    /** Gets or sets the maximum number of records the channel allows retrieving at a time. */
    public var maxPageSize: Int?
    /** Gets or sets the automatic refresh levels. */
    public var autoRefreshLevels: Int?
    /** Gets or sets the default sort orders. */
    public var defaultSortFields: [ChannelItemSortField]?
    /** Gets or sets a value indicating whether a sort ascending/descending toggle is supported. */
    public var supportsSortOrderToggle: Bool?
    /** Gets or sets a value indicating whether [supports latest media]. */
    public var supportsLatestMedia: Bool?
    /** Gets or sets a value indicating whether this instance can filter. */
    public var canFilter: Bool?
    /** Gets or sets a value indicating whether [supports content downloading]. */
    public var supportsContentDownloading: Bool?

    public init(name: String? = nil, id: String? = nil, canSearch: Bool? = nil, mediaTypes: [ChannelMediaType]? = nil, contentTypes: [ChannelMediaContentType]? = nil, maxPageSize: Int? = nil, autoRefreshLevels: Int? = nil, defaultSortFields: [ChannelItemSortField]? = nil, supportsSortOrderToggle: Bool? = nil, supportsLatestMedia: Bool? = nil, canFilter: Bool? = nil, supportsContentDownloading: Bool? = nil) {
        self.name = name
        self.id = id
        self.canSearch = canSearch
        self.mediaTypes = mediaTypes
        self.contentTypes = contentTypes
        self.maxPageSize = maxPageSize
        self.autoRefreshLevels = autoRefreshLevels
        self.defaultSortFields = defaultSortFields
        self.supportsSortOrderToggle = supportsSortOrderToggle
        self.supportsLatestMedia = supportsLatestMedia
        self.canFilter = canFilter
        self.supportsContentDownloading = supportsContentDownloading
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case id = "Id"
        case canSearch = "CanSearch"
        case mediaTypes = "MediaTypes"
        case contentTypes = "ContentTypes"
        case maxPageSize = "MaxPageSize"
        case autoRefreshLevels = "AutoRefreshLevels"
        case defaultSortFields = "DefaultSortFields"
        case supportsSortOrderToggle = "SupportsSortOrderToggle"
        case supportsLatestMedia = "SupportsLatestMedia"
        case canFilter = "CanFilter"
        case supportsContentDownloading = "SupportsContentDownloading"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(canSearch, forKey: .canSearch)
        try container.encodeIfPresent(mediaTypes, forKey: .mediaTypes)
        try container.encodeIfPresent(contentTypes, forKey: .contentTypes)
        try container.encodeIfPresent(maxPageSize, forKey: .maxPageSize)
        try container.encodeIfPresent(autoRefreshLevels, forKey: .autoRefreshLevels)
        try container.encodeIfPresent(defaultSortFields, forKey: .defaultSortFields)
        try container.encodeIfPresent(supportsSortOrderToggle, forKey: .supportsSortOrderToggle)
        try container.encodeIfPresent(supportsLatestMedia, forKey: .supportsLatestMedia)
        try container.encodeIfPresent(canFilter, forKey: .canFilter)
        try container.encodeIfPresent(supportsContentDownloading, forKey: .supportsContentDownloading)
    }
}

