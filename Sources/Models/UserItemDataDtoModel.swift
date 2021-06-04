//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Class UserItemDataDto. */
public struct UserItemDataDtoModel: APIModel {

    /** Gets or sets a value indicating whether this instance is favorite. */
    public var isFavorite: Bool?

    /** Gets or sets the item identifier. */
    public var itemId: String?

    /** Gets or sets the key. */
    public var key: String?

    /** Gets or sets the last played date. */
    public var lastPlayedDate: DateTime?

    /** Gets or sets a value indicating whether this MediaBrowser.Model.Dto.UserItemDataDto is likes. */
    public var likes: Bool?

    /** Gets or sets the play count. */
    public var playCount: Int?

    /** Gets or sets the playback position ticks. */
    public var playbackPositionTicks: Int?

    /** Gets or sets a value indicating whether this MediaBrowser.Model.Dto.UserItemDataDto is played. */
    public var played: Bool?

    /** Gets or sets the played percentage. */
    public var playedPercentage: Double?

    /** Gets or sets the rating. */
    public var rating: Double?

    /** Gets or sets the unplayed item count. */
    public var unplayedItemCount: Int?

    public init(isFavorite: Bool? = nil, itemId: String? = nil, key: String? = nil, lastPlayedDate: DateTime? = nil, likes: Bool? = nil, playCount: Int? = nil, playbackPositionTicks: Int? = nil, played: Bool? = nil, playedPercentage: Double? = nil, rating: Double? = nil, unplayedItemCount: Int? = nil) {
        self.isFavorite = isFavorite
        self.itemId = itemId
        self.key = key
        self.lastPlayedDate = lastPlayedDate
        self.likes = likes
        self.playCount = playCount
        self.playbackPositionTicks = playbackPositionTicks
        self.played = played
        self.playedPercentage = playedPercentage
        self.rating = rating
        self.unplayedItemCount = unplayedItemCount
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        isFavorite = try decoderContainer.decodeIfPresent("IsFavorite")
        itemId = try decoderContainer.decodeIfPresent("ItemId")
        key = try decoderContainer.decodeIfPresent("Key")
        lastPlayedDate = try decoderContainer.decodeIfPresent("LastPlayedDate")
        likes = try decoderContainer.decodeIfPresent("Likes")
        playCount = try decoderContainer.decodeIfPresent("PlayCount")
        playbackPositionTicks = try decoderContainer.decodeIfPresent("PlaybackPositionTicks")
        played = try decoderContainer.decodeIfPresent("Played")
        playedPercentage = try decoderContainer.decodeIfPresent("PlayedPercentage")
        rating = try decoderContainer.decodeIfPresent("Rating")
        unplayedItemCount = try decoderContainer.decodeIfPresent("UnplayedItemCount")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(isFavorite, forKey: "IsFavorite")
        try encoderContainer.encodeIfPresent(itemId, forKey: "ItemId")
        try encoderContainer.encodeIfPresent(key, forKey: "Key")
        try encoderContainer.encodeIfPresent(lastPlayedDate, forKey: "LastPlayedDate")
        try encoderContainer.encodeIfPresent(likes, forKey: "Likes")
        try encoderContainer.encodeIfPresent(playCount, forKey: "PlayCount")
        try encoderContainer.encodeIfPresent(playbackPositionTicks, forKey: "PlaybackPositionTicks")
        try encoderContainer.encodeIfPresent(played, forKey: "Played")
        try encoderContainer.encodeIfPresent(playedPercentage, forKey: "PlayedPercentage")
        try encoderContainer.encodeIfPresent(rating, forKey: "Rating")
        try encoderContainer.encodeIfPresent(unplayedItemCount, forKey: "UnplayedItemCount")
    }

}