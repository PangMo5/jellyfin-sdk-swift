//
// OpenLiveStreamRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Open live stream dto. */
public struct OpenLiveStreamRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the open token. */
    public var openToken: String?
    /** Gets or sets the user id. */
    public var userId: String?
    /** Gets or sets the play session id. */
    public var playSessionId: String?
    /** Gets or sets the max streaming bitrate. */
    public var maxStreamingBitrate: Int?
    /** Gets or sets the start time in ticks. */
    public var startTimeTicks: Int64?
    /** Gets or sets the audio stream index. */
    public var audioStreamIndex: Int?
    /** Gets or sets the subtitle stream index. */
    public var subtitleStreamIndex: Int?
    /** Gets or sets the max audio channels. */
    public var maxAudioChannels: Int?
    /** Gets or sets the item id. */
    public var itemId: String?
    /** Gets or sets a value indicating whether to enable direct play. */
    public var enableDirectPlay: Bool?
    /** Gets or sets a value indicating whether to enale direct stream. */
    public var enableDirectStream: Bool?
    public var deviceProfile: ClientCapabilitiesDeviceProfile?
    /** Gets or sets the device play protocols. */
    public var directPlayProtocols: [MediaProtocol]?

    public init(openToken: String? = nil, userId: String? = nil, playSessionId: String? = nil, maxStreamingBitrate: Int? = nil, startTimeTicks: Int64? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, maxAudioChannels: Int? = nil, itemId: String? = nil, enableDirectPlay: Bool? = nil, enableDirectStream: Bool? = nil, deviceProfile: ClientCapabilitiesDeviceProfile? = nil, directPlayProtocols: [MediaProtocol]? = nil) {
        self.openToken = openToken
        self.userId = userId
        self.playSessionId = playSessionId
        self.maxStreamingBitrate = maxStreamingBitrate
        self.startTimeTicks = startTimeTicks
        self.audioStreamIndex = audioStreamIndex
        self.subtitleStreamIndex = subtitleStreamIndex
        self.maxAudioChannels = maxAudioChannels
        self.itemId = itemId
        self.enableDirectPlay = enableDirectPlay
        self.enableDirectStream = enableDirectStream
        self.deviceProfile = deviceProfile
        self.directPlayProtocols = directPlayProtocols
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case openToken = "OpenToken"
        case userId = "UserId"
        case playSessionId = "PlaySessionId"
        case maxStreamingBitrate = "MaxStreamingBitrate"
        case startTimeTicks = "StartTimeTicks"
        case audioStreamIndex = "AudioStreamIndex"
        case subtitleStreamIndex = "SubtitleStreamIndex"
        case maxAudioChannels = "MaxAudioChannels"
        case itemId = "ItemId"
        case enableDirectPlay = "EnableDirectPlay"
        case enableDirectStream = "EnableDirectStream"
        case deviceProfile = "DeviceProfile"
        case directPlayProtocols = "DirectPlayProtocols"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(openToken, forKey: .openToken)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(playSessionId, forKey: .playSessionId)
        try container.encodeIfPresent(maxStreamingBitrate, forKey: .maxStreamingBitrate)
        try container.encodeIfPresent(startTimeTicks, forKey: .startTimeTicks)
        try container.encodeIfPresent(audioStreamIndex, forKey: .audioStreamIndex)
        try container.encodeIfPresent(subtitleStreamIndex, forKey: .subtitleStreamIndex)
        try container.encodeIfPresent(maxAudioChannels, forKey: .maxAudioChannels)
        try container.encodeIfPresent(itemId, forKey: .itemId)
        try container.encodeIfPresent(enableDirectPlay, forKey: .enableDirectPlay)
        try container.encodeIfPresent(enableDirectStream, forKey: .enableDirectStream)
        try container.encodeIfPresent(deviceProfile, forKey: .deviceProfile)
        try container.encodeIfPresent(directPlayProtocols, forKey: .directPlayProtocols)
    }
}

