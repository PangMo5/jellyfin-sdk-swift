//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Class ImageProviderInfo. */
public struct ImageProviderInfoModel: APIModel {

    /** Gets the name. */
    public var name: String?

    /** Gets the supported image types. */
    public var supportedImages: [ImageType]?

    public init(name: String? = nil, supportedImages: [ImageType]? = nil) {
        self.name = name
        self.supportedImages = supportedImages
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        name = try decoderContainer.decodeIfPresent("Name")
        supportedImages = try decoderContainer.decodeArrayIfPresent("SupportedImages")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(name, forKey: "Name")
        try encoderContainer.encodeIfPresent(supportedImages, forKey: "SupportedImages")
    }

}