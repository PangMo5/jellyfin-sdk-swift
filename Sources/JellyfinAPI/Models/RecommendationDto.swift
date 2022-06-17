//
// RecommendationDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RecommendationDto: Codable, JSONEncodable, Hashable {

    public var items: [BaseItemDto]?
    public var recommendationType: RecommendationType?
    public var baselineItemName: String?
    public var categoryId: String?

    public init(items: [BaseItemDto]? = nil, recommendationType: RecommendationType? = nil, baselineItemName: String? = nil, categoryId: String? = nil) {
        self.items = items
        self.recommendationType = recommendationType
        self.baselineItemName = baselineItemName
        self.categoryId = categoryId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items = "Items"
        case recommendationType = "RecommendationType"
        case baselineItemName = "BaselineItemName"
        case categoryId = "CategoryId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(recommendationType, forKey: .recommendationType)
        try container.encodeIfPresent(baselineItemName, forKey: .baselineItemName)
        try container.encodeIfPresent(categoryId, forKey: .categoryId)
    }
}

