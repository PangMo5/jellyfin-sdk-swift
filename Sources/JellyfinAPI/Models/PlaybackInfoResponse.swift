//
// PlaybackInfoResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class PlaybackInfoResponse. */
public struct PlaybackInfoResponse: Codable, Hashable {

    /** Gets or sets the media sources. */
    public var mediaSources: [MediaSourceInfo]?
    /** Gets or sets the play session identifier. */
    public var playSessionId: String?
    public var errorCode: PlaybackErrorCode?

    public init(mediaSources: [MediaSourceInfo]? = nil, playSessionId: String? = nil, errorCode: PlaybackErrorCode? = nil) {
        self.mediaSources = mediaSources
        self.playSessionId = playSessionId
        self.errorCode = errorCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mediaSources = "MediaSources"
        case playSessionId = "PlaySessionId"
        case errorCode = "ErrorCode"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(mediaSources, forKey: .mediaSources)
        try encoderContainer.encodeIfPresent(playSessionId, forKey: .playSessionId)
        try encoderContainer.encodeIfPresent(errorCode, forKey: .errorCode)
    }
}