//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Upload subtitles dto. */
public struct UploadSubtitleDtoModel: APIModel {

    /** Gets or sets the subtitle data. */
    public var data: String

    /** Gets or sets the subtitle format. */
    public var format: String

    /** Gets or sets a value indicating whether the subtitle is forced. */
    public var isForced: Bool

    /** Gets or sets the subtitle language. */
    public var language: String

    public init(data: String, format: String, isForced: Bool, language: String) {
        self.data = data
        self.format = format
        self.isForced = isForced
        self.language = language
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        data = try decoderContainer.decode("Data")
        format = try decoderContainer.decode("Format")
        isForced = try decoderContainer.decode("IsForced")
        language = try decoderContainer.decode("Language")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encode(data, forKey: "Data")
        try encoderContainer.encode(format, forKey: "Format")
        try encoderContainer.encode(isForced, forKey: "IsForced")
        try encoderContainer.encode(language, forKey: "Language")
    }

}
