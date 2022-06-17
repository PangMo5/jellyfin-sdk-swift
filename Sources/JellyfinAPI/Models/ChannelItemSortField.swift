//
// ChannelItemSortField.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ChannelItemSortField: String, Codable, CaseIterable {
    case name = "Name"
    case communityRating = "CommunityRating"
    case premiereDate = "PremiereDate"
    case dateCreated = "DateCreated"
    case runtime = "Runtime"
    case playCount = "PlayCount"
    case communityPlayCount = "CommunityPlayCount"
}
