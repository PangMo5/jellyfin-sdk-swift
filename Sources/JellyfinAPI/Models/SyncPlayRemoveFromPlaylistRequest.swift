//
// SyncPlayRemoveFromPlaylistRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class RemoveFromPlaylistRequestDto. */
public struct SyncPlayRemoveFromPlaylistRequest: Codable, Hashable {

    /** Gets or sets the playlist identifiers ot the items. Ignored when clearing the playlist. */
    public var playlistItemIds: [String]?
    /** Gets or sets a value indicating whether the entire playlist should be cleared. */
    public var clearPlaylist: Bool?
    /** Gets or sets a value indicating whether the playing item should be removed as well. Used only when clearing the playlist. */
    public var clearPlayingItem: Bool?

    public init(playlistItemIds: [String]? = nil, clearPlaylist: Bool? = nil, clearPlayingItem: Bool? = nil) {
        self.playlistItemIds = playlistItemIds
        self.clearPlaylist = clearPlaylist
        self.clearPlayingItem = clearPlayingItem
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case playlistItemIds = "PlaylistItemIds"
        case clearPlaylist = "ClearPlaylist"
        case clearPlayingItem = "ClearPlayingItem"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(playlistItemIds, forKey: .playlistItemIds)
        try encoderContainer.encodeIfPresent(clearPlaylist, forKey: .clearPlaylist)
        try encoderContainer.encodeIfPresent(clearPlayingItem, forKey: .clearPlayingItem)
    }
}
