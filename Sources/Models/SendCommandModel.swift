//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Class SendCommand. */
public struct SendCommandModel: APIModel {

    public var command: SendCommandType?

    /** Gets the UTC time when this command has been emitted. */
    public var emittedAt: DateTime?

    /** Gets the group identifier. */
    public var groupId: ID?

    /** Gets the playlist identifier of the playing item. */
    public var playlistItemId: ID?

    /** Gets the position ticks. */
    public var positionTicks: Int?

    /** Gets or sets the UTC time when to execute the command. */
    public var when: DateTime?

    public init(command: SendCommandType? = nil, emittedAt: DateTime? = nil, groupId: ID? = nil, playlistItemId: ID? = nil, positionTicks: Int? = nil, when: DateTime? = nil) {
        self.command = command
        self.emittedAt = emittedAt
        self.groupId = groupId
        self.playlistItemId = playlistItemId
        self.positionTicks = positionTicks
        self.when = when
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        command = try decoderContainer.decodeIfPresent("Command")
        emittedAt = try decoderContainer.decodeIfPresent("EmittedAt")
        groupId = try decoderContainer.decodeIfPresent("GroupId")
        playlistItemId = try decoderContainer.decodeIfPresent("PlaylistItemId")
        positionTicks = try decoderContainer.decodeIfPresent("PositionTicks")
        when = try decoderContainer.decodeIfPresent("When")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(command, forKey: "Command")
        try encoderContainer.encodeIfPresent(emittedAt, forKey: "EmittedAt")
        try encoderContainer.encodeIfPresent(groupId, forKey: "GroupId")
        try encoderContainer.encodeIfPresent(playlistItemId, forKey: "PlaylistItemId")
        try encoderContainer.encodeIfPresent(positionTicks, forKey: "PositionTicks")
        try encoderContainer.encodeIfPresent(when, forKey: "When")
    }

}
