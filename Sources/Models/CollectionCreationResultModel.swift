//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct CollectionCreationResultModel: APIModel {

    public var id: ID?

    public init(id: ID? = nil) {
        self.id = id
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        id = try decoderContainer.decodeIfPresent("Id")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(id, forKey: "Id")
    }

}