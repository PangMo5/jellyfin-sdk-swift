//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Class RemoveFromPlaylistRequestDto. */
public struct RemoveFromPlaylistRequestDtoModel: APIModel {

    /** Gets or sets the playlist identifiers ot the items. */
    public var playlistItemIds: [ID]?

    public init(playlistItemIds: [ID]? = nil) {
        self.playlistItemIds = playlistItemIds
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        playlistItemIds = try decoderContainer.decodeArrayIfPresent("PlaylistItemIds")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(playlistItemIds, forKey: "PlaylistItemIds")
    }

}