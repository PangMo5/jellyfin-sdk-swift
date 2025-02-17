//
// SearchHintResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class SearchHintResult. */
public struct SearchHintResult: Codable, JSONEncodable, Hashable {

    /** Gets the search hints. */
    public var searchHints: [SearchHint]?
    /** Gets the total record count. */
    public var totalRecordCount: Int?

    public init(searchHints: [SearchHint]? = nil, totalRecordCount: Int? = nil) {
        self.searchHints = searchHints
        self.totalRecordCount = totalRecordCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searchHints = "SearchHints"
        case totalRecordCount = "TotalRecordCount"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(searchHints, forKey: .searchHints)
        try container.encodeIfPresent(totalRecordCount, forKey: .totalRecordCount)
    }
}

