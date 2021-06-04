//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct QueryFiltersModel: APIModel {

    public var genres: [NameGuidPairModel]?

    public var tags: [String]?

    public init(genres: [NameGuidPairModel]? = nil, tags: [String]? = nil) {
        self.genres = genres
        self.tags = tags
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        genres = try decoderContainer.decodeArrayIfPresent("Genres")
        tags = try decoderContainer.decodeArrayIfPresent("Tags")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(genres, forKey: "Genres")
        try encoderContainer.encodeIfPresent(tags, forKey: "Tags")
    }

}
