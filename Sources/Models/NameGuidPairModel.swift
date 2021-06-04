//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct NameGuidPairModel: APIModel {

    public var id: ID?

    public var name: String?

    public init(id: ID? = nil, name: String? = nil) {
        self.id = id
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        id = try decoderContainer.decodeIfPresent("Id")
        name = try decoderContainer.decodeIfPresent("Name")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(id, forKey: "Id")
        try encoderContainer.encodeIfPresent(name, forKey: "Name")
    }

}