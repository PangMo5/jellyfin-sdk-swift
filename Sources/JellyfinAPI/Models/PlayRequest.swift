//
// PlayRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class PlayRequest. */
public struct PlayRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the item ids. */
    public var itemIds: [String]?
    /** Gets or sets the start position ticks that the first item should be played at. */
    public var startPositionTicks: Int64?
    /** Gets or sets the play command. */
    public var playCommand: PlayCommand?
    /** Gets or sets the controlling user identifier. */
    public var controllingUserId: String?
    public var subtitleStreamIndex: Int?
    public var audioStreamIndex: Int?
    public var mediaSourceId: String?
    public var startIndex: Int?

    public init(itemIds: [String]? = nil, startPositionTicks: Int64? = nil, playCommand: PlayCommand? = nil, controllingUserId: String? = nil, subtitleStreamIndex: Int? = nil, audioStreamIndex: Int? = nil, mediaSourceId: String? = nil, startIndex: Int? = nil) {
        self.itemIds = itemIds
        self.startPositionTicks = startPositionTicks
        self.playCommand = playCommand
        self.controllingUserId = controllingUserId
        self.subtitleStreamIndex = subtitleStreamIndex
        self.audioStreamIndex = audioStreamIndex
        self.mediaSourceId = mediaSourceId
        self.startIndex = startIndex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case itemIds = "ItemIds"
        case startPositionTicks = "StartPositionTicks"
        case playCommand = "PlayCommand"
        case controllingUserId = "ControllingUserId"
        case subtitleStreamIndex = "SubtitleStreamIndex"
        case audioStreamIndex = "AudioStreamIndex"
        case mediaSourceId = "MediaSourceId"
        case startIndex = "StartIndex"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(itemIds, forKey: .itemIds)
        try container.encodeIfPresent(startPositionTicks, forKey: .startPositionTicks)
        try container.encodeIfPresent(playCommand, forKey: .playCommand)
        try container.encodeIfPresent(controllingUserId, forKey: .controllingUserId)
        try container.encodeIfPresent(subtitleStreamIndex, forKey: .subtitleStreamIndex)
        try container.encodeIfPresent(audioStreamIndex, forKey: .audioStreamIndex)
        try container.encodeIfPresent(mediaSourceId, forKey: .mediaSourceId)
        try container.encodeIfPresent(startIndex, forKey: .startIndex)
    }
}

