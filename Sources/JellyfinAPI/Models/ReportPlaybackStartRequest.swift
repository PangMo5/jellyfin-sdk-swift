//
// ReportPlaybackStartRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class PlaybackStartInfo. */
public struct ReportPlaybackStartRequest: Codable, Hashable {

    /** Gets or sets a value indicating whether this instance can seek. */
    public var canSeek: Bool?
    public var item: PlaybackProgressInfoItem?
    /** Gets or sets the item identifier. */
    public var itemId: String?
    /** Gets or sets the session id. */
    public var sessionId: String?
    /** Gets or sets the media version identifier. */
    public var mediaSourceId: String?
    /** Gets or sets the index of the audio stream. */
    public var audioStreamIndex: Int?
    /** Gets or sets the index of the subtitle stream. */
    public var subtitleStreamIndex: Int?
    /** Gets or sets a value indicating whether this instance is paused. */
    public var isPaused: Bool?
    /** Gets or sets a value indicating whether this instance is muted. */
    public var isMuted: Bool?
    /** Gets or sets the position ticks. */
    public var positionTicks: Int64?
    public var playbackStartTimeTicks: Int64?
    /** Gets or sets the volume level. */
    public var volumeLevel: Int?
    public var brightness: Int?
    public var aspectRatio: String?
    /** Gets or sets the play method. */
    public var playMethod: PlayMethod?
    /** Gets or sets the live stream identifier. */
    public var liveStreamId: String?
    /** Gets or sets the play session identifier. */
    public var playSessionId: String?
    /** Gets or sets the repeat mode. */
    public var repeatMode: RepeatMode?
    public var nowPlayingQueue: [QueueItem]?
    public var playlistItemId: String?

    public init(canSeek: Bool? = nil, item: PlaybackProgressInfoItem? = nil, itemId: String? = nil, sessionId: String? = nil, mediaSourceId: String? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, isPaused: Bool? = nil, isMuted: Bool? = nil, positionTicks: Int64? = nil, playbackStartTimeTicks: Int64? = nil, volumeLevel: Int? = nil, brightness: Int? = nil, aspectRatio: String? = nil, playMethod: PlayMethod? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, repeatMode: RepeatMode? = nil, nowPlayingQueue: [QueueItem]? = nil, playlistItemId: String? = nil) {
        self.canSeek = canSeek
        self.item = item
        self.itemId = itemId
        self.sessionId = sessionId
        self.mediaSourceId = mediaSourceId
        self.audioStreamIndex = audioStreamIndex
        self.subtitleStreamIndex = subtitleStreamIndex
        self.isPaused = isPaused
        self.isMuted = isMuted
        self.positionTicks = positionTicks
        self.playbackStartTimeTicks = playbackStartTimeTicks
        self.volumeLevel = volumeLevel
        self.brightness = brightness
        self.aspectRatio = aspectRatio
        self.playMethod = playMethod
        self.liveStreamId = liveStreamId
        self.playSessionId = playSessionId
        self.repeatMode = repeatMode
        self.nowPlayingQueue = nowPlayingQueue
        self.playlistItemId = playlistItemId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case canSeek = "CanSeek"
        case item = "Item"
        case itemId = "ItemId"
        case sessionId = "SessionId"
        case mediaSourceId = "MediaSourceId"
        case audioStreamIndex = "AudioStreamIndex"
        case subtitleStreamIndex = "SubtitleStreamIndex"
        case isPaused = "IsPaused"
        case isMuted = "IsMuted"
        case positionTicks = "PositionTicks"
        case playbackStartTimeTicks = "PlaybackStartTimeTicks"
        case volumeLevel = "VolumeLevel"
        case brightness = "Brightness"
        case aspectRatio = "AspectRatio"
        case playMethod = "PlayMethod"
        case liveStreamId = "LiveStreamId"
        case playSessionId = "PlaySessionId"
        case repeatMode = "RepeatMode"
        case nowPlayingQueue = "NowPlayingQueue"
        case playlistItemId = "PlaylistItemId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(canSeek, forKey: .canSeek)
        try encoderContainer.encodeIfPresent(item, forKey: .item)
        try encoderContainer.encodeIfPresent(itemId, forKey: .itemId)
        try encoderContainer.encodeIfPresent(sessionId, forKey: .sessionId)
        try encoderContainer.encodeIfPresent(mediaSourceId, forKey: .mediaSourceId)
        try encoderContainer.encodeIfPresent(audioStreamIndex, forKey: .audioStreamIndex)
        try encoderContainer.encodeIfPresent(subtitleStreamIndex, forKey: .subtitleStreamIndex)
        try encoderContainer.encodeIfPresent(isPaused, forKey: .isPaused)
        try encoderContainer.encodeIfPresent(isMuted, forKey: .isMuted)
        try encoderContainer.encodeIfPresent(positionTicks, forKey: .positionTicks)
        try encoderContainer.encodeIfPresent(playbackStartTimeTicks, forKey: .playbackStartTimeTicks)
        try encoderContainer.encodeIfPresent(volumeLevel, forKey: .volumeLevel)
        try encoderContainer.encodeIfPresent(brightness, forKey: .brightness)
        try encoderContainer.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        try encoderContainer.encodeIfPresent(playMethod, forKey: .playMethod)
        try encoderContainer.encodeIfPresent(liveStreamId, forKey: .liveStreamId)
        try encoderContainer.encodeIfPresent(playSessionId, forKey: .playSessionId)
        try encoderContainer.encodeIfPresent(repeatMode, forKey: .repeatMode)
        try encoderContainer.encodeIfPresent(nowPlayingQueue, forKey: .nowPlayingQueue)
        try encoderContainer.encodeIfPresent(playlistItemId, forKey: .playlistItemId)
    }
}
