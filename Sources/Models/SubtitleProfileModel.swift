//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct SubtitleProfileModel: APIModel {

    public var container: String?

    public var didlMode: String?

    public var format: String?

    public var language: String?

    public var method: SubtitleDeliveryMethod?

    public init(container: String? = nil, didlMode: String? = nil, format: String? = nil, language: String? = nil, method: SubtitleDeliveryMethod? = nil) {
        self.container = container
        self.didlMode = didlMode
        self.format = format
        self.language = language
        self.method = method
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        container = try decoderContainer.decodeIfPresent("Container")
        didlMode = try decoderContainer.decodeIfPresent("DidlMode")
        format = try decoderContainer.decodeIfPresent("Format")
        language = try decoderContainer.decodeIfPresent("Language")
        method = try decoderContainer.decodeIfPresent("Method")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(container, forKey: "Container")
        try encoderContainer.encodeIfPresent(didlMode, forKey: "DidlMode")
        try encoderContainer.encodeIfPresent(format, forKey: "Format")
        try encoderContainer.encodeIfPresent(language, forKey: "Language")
        try encoderContainer.encodeIfPresent(method, forKey: "Method")
    }

}