//
// TimerInfoDtoQueryResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TimerInfoDtoQueryResult: Codable, JSONEncodable, Hashable {

    /** Gets or sets the items. */
    public var items: [TimerInfoDto]?
    /** Gets or sets the total number of records available. */
    public var totalRecordCount: Int?
    /** Gets or sets the index of the first record in Items. */
    public var startIndex: Int?

    public init(items: [TimerInfoDto]? = nil, totalRecordCount: Int? = nil, startIndex: Int? = nil) {
        self.items = items
        self.totalRecordCount = totalRecordCount
        self.startIndex = startIndex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items = "Items"
        case totalRecordCount = "TotalRecordCount"
        case startIndex = "StartIndex"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(totalRecordCount, forKey: .totalRecordCount)
        try container.encodeIfPresent(startIndex, forKey: .startIndex)
    }
}

