//
// BoxSetInfoRemoteSearchQuerySearchInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BoxSetInfoRemoteSearchQuerySearchInfo: Codable, JSONEncodable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the original title. */
    public var originalTitle: String?
    /** Gets or sets the path. */
    public var path: String?
    /** Gets or sets the metadata language. */
    public var metadataLanguage: String?
    /** Gets or sets the metadata country code. */
    public var metadataCountryCode: String?
    /** Gets or sets the provider ids. */
    public var providerIds: [String: String]?
    /** Gets or sets the year. */
    public var year: Int?
    public var indexNumber: Int?
    public var parentIndexNumber: Int?
    public var premiereDate: Date?
    public var isAutomated: Bool?

    public init(name: String? = nil, originalTitle: String? = nil, path: String? = nil, metadataLanguage: String? = nil, metadataCountryCode: String? = nil, providerIds: [String: String]? = nil, year: Int? = nil, indexNumber: Int? = nil, parentIndexNumber: Int? = nil, premiereDate: Date? = nil, isAutomated: Bool? = nil) {
        self.name = name
        self.originalTitle = originalTitle
        self.path = path
        self.metadataLanguage = metadataLanguage
        self.metadataCountryCode = metadataCountryCode
        self.providerIds = providerIds
        self.year = year
        self.indexNumber = indexNumber
        self.parentIndexNumber = parentIndexNumber
        self.premiereDate = premiereDate
        self.isAutomated = isAutomated
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case originalTitle = "OriginalTitle"
        case path = "Path"
        case metadataLanguage = "MetadataLanguage"
        case metadataCountryCode = "MetadataCountryCode"
        case providerIds = "ProviderIds"
        case year = "Year"
        case indexNumber = "IndexNumber"
        case parentIndexNumber = "ParentIndexNumber"
        case premiereDate = "PremiereDate"
        case isAutomated = "IsAutomated"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(originalTitle, forKey: .originalTitle)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(metadataLanguage, forKey: .metadataLanguage)
        try container.encodeIfPresent(metadataCountryCode, forKey: .metadataCountryCode)
        try container.encodeIfPresent(providerIds, forKey: .providerIds)
        try container.encodeIfPresent(year, forKey: .year)
        try container.encodeIfPresent(indexNumber, forKey: .indexNumber)
        try container.encodeIfPresent(parentIndexNumber, forKey: .parentIndexNumber)
        try container.encodeIfPresent(premiereDate, forKey: .premiereDate)
        try container.encodeIfPresent(isAutomated, forKey: .isAutomated)
    }
}

