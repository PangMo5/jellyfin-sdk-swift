//
// SyncPlayPreviousItemRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class PreviousItemRequestDto. */
public struct SyncPlayPreviousItemRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the playing item identifier. */
    public var playlistItemId: String?

    public init(playlistItemId: String? = nil) {
        self.playlistItemId = playlistItemId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case playlistItemId = "PlaylistItemId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(playlistItemId, forKey: .playlistItemId)
    }
}
