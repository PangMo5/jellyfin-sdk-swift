//
// ReportPlaybackStoppedRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class PlaybackStopInfo. */
public struct ReportPlaybackStoppedRequest: Codable, JSONEncodable, Hashable {

    public var item: PlaybackProgressInfoItem?
    /** Gets or sets the item identifier. */
    public var itemId: String?
    /** Gets or sets the session id. */
    public var sessionId: String?
    /** Gets or sets the media version identifier. */
    public var mediaSourceId: String?
    /** Gets or sets the position ticks. */
    public var positionTicks: Int64?
    /** Gets or sets the live stream identifier. */
    public var liveStreamId: String?
    /** Gets or sets the play session identifier. */
    public var playSessionId: String?
    /** Gets or sets a value indicating whether this MediaBrowser.Model.Session.PlaybackStopInfo is failed. */
    public var failed: Bool?
    public var nextMediaType: String?
    public var playlistItemId: String?
    public var nowPlayingQueue: [QueueItem]?

    public init(item: PlaybackProgressInfoItem? = nil, itemId: String? = nil, sessionId: String? = nil, mediaSourceId: String? = nil, positionTicks: Int64? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, failed: Bool? = nil, nextMediaType: String? = nil, playlistItemId: String? = nil, nowPlayingQueue: [QueueItem]? = nil) {
        self.item = item
        self.itemId = itemId
        self.sessionId = sessionId
        self.mediaSourceId = mediaSourceId
        self.positionTicks = positionTicks
        self.liveStreamId = liveStreamId
        self.playSessionId = playSessionId
        self.failed = failed
        self.nextMediaType = nextMediaType
        self.playlistItemId = playlistItemId
        self.nowPlayingQueue = nowPlayingQueue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case item = "Item"
        case itemId = "ItemId"
        case sessionId = "SessionId"
        case mediaSourceId = "MediaSourceId"
        case positionTicks = "PositionTicks"
        case liveStreamId = "LiveStreamId"
        case playSessionId = "PlaySessionId"
        case failed = "Failed"
        case nextMediaType = "NextMediaType"
        case playlistItemId = "PlaylistItemId"
        case nowPlayingQueue = "NowPlayingQueue"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(item, forKey: .item)
        try container.encodeIfPresent(itemId, forKey: .itemId)
        try container.encodeIfPresent(sessionId, forKey: .sessionId)
        try container.encodeIfPresent(mediaSourceId, forKey: .mediaSourceId)
        try container.encodeIfPresent(positionTicks, forKey: .positionTicks)
        try container.encodeIfPresent(liveStreamId, forKey: .liveStreamId)
        try container.encodeIfPresent(playSessionId, forKey: .playSessionId)
        try container.encodeIfPresent(failed, forKey: .failed)
        try container.encodeIfPresent(nextMediaType, forKey: .nextMediaType)
        try container.encodeIfPresent(playlistItemId, forKey: .playlistItemId)
        try container.encodeIfPresent(nowPlayingQueue, forKey: .nowPlayingQueue)
    }
}
