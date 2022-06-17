//
// SyncPlaySetPlaylistItemRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class SetPlaylistItemRequestDto. */
public struct SyncPlaySetPlaylistItemRequest: Codable, Hashable {

    /** Gets or sets the playlist identifier of the playing item. */
    public var playlistItemId: String?

    public init(playlistItemId: String? = nil) {
        self.playlistItemId = playlistItemId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case playlistItemId = "PlaylistItemId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(playlistItemId, forKey: .playlistItemId)
    }
}
