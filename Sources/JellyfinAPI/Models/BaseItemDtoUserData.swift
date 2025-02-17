//
// BaseItemDtoUserData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Gets or sets the user data for this item based on the user it&#39;s being requested for. */
public struct BaseItemDtoUserData: Codable, JSONEncodable, Hashable {

    /** Gets or sets the rating. */
    public var rating: Double?
    /** Gets or sets the played percentage. */
    public var playedPercentage: Double?
    /** Gets or sets the unplayed item count. */
    public var unplayedItemCount: Int?
    /** Gets or sets the playback position ticks. */
    public var playbackPositionTicks: Int64?
    /** Gets or sets the play count. */
    public var playCount: Int?
    /** Gets or sets a value indicating whether this instance is favorite. */
    public var isFavorite: Bool?
    /** Gets or sets a value indicating whether this MediaBrowser.Model.Dto.UserItemDataDto is likes. */
    public var likes: Bool?
    /** Gets or sets the last played date. */
    public var lastPlayedDate: Date?
    /** Gets or sets a value indicating whether this MediaBrowser.Model.Dto.UserItemDataDto is played. */
    public var played: Bool?
    /** Gets or sets the key. */
    public var key: String?
    /** Gets or sets the item identifier. */
    public var itemId: String?

    public init(rating: Double? = nil, playedPercentage: Double? = nil, unplayedItemCount: Int? = nil, playbackPositionTicks: Int64? = nil, playCount: Int? = nil, isFavorite: Bool? = nil, likes: Bool? = nil, lastPlayedDate: Date? = nil, played: Bool? = nil, key: String? = nil, itemId: String? = nil) {
        self.rating = rating
        self.playedPercentage = playedPercentage
        self.unplayedItemCount = unplayedItemCount
        self.playbackPositionTicks = playbackPositionTicks
        self.playCount = playCount
        self.isFavorite = isFavorite
        self.likes = likes
        self.lastPlayedDate = lastPlayedDate
        self.played = played
        self.key = key
        self.itemId = itemId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rating = "Rating"
        case playedPercentage = "PlayedPercentage"
        case unplayedItemCount = "UnplayedItemCount"
        case playbackPositionTicks = "PlaybackPositionTicks"
        case playCount = "PlayCount"
        case isFavorite = "IsFavorite"
        case likes = "Likes"
        case lastPlayedDate = "LastPlayedDate"
        case played = "Played"
        case key = "Key"
        case itemId = "ItemId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(rating, forKey: .rating)
        try container.encodeIfPresent(playedPercentage, forKey: .playedPercentage)
        try container.encodeIfPresent(unplayedItemCount, forKey: .unplayedItemCount)
        try container.encodeIfPresent(playbackPositionTicks, forKey: .playbackPositionTicks)
        try container.encodeIfPresent(playCount, forKey: .playCount)
        try container.encodeIfPresent(isFavorite, forKey: .isFavorite)
        try container.encodeIfPresent(likes, forKey: .likes)
        try container.encodeIfPresent(lastPlayedDate, forKey: .lastPlayedDate)
        try container.encodeIfPresent(played, forKey: .played)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(itemId, forKey: .itemId)
    }
}

