//
// LiveStreamResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LiveStreamResponse: Codable, JSONEncodable, Hashable {

    public var mediaSource: LiveStreamResponseMediaSource?

    public init(mediaSource: LiveStreamResponseMediaSource? = nil) {
        self.mediaSource = mediaSource
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mediaSource = "MediaSource"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mediaSource, forKey: .mediaSource)
    }
}

