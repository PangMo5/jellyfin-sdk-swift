//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Special view option dto. */
public struct SpecialViewOptionDtoModel: APIModel {

    /** Gets or sets view option id. */
    public var id: String?

    /** Gets or sets view option name. */
    public var name: String?

    public init(id: String? = nil, name: String? = nil) {
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