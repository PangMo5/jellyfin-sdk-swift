//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Class MediaAttachment. */
public struct MediaAttachmentModel: APIModel {

    /** Gets or sets the codec. */
    public var codec: String?

    /** Gets or sets the codec tag. */
    public var codecTag: String?

    /** Gets or sets the comment. */
    public var comment: String?

    /** Gets or sets the delivery URL. */
    public var deliveryUrl: String?

    /** Gets or sets the filename. */
    public var fileName: String?

    /** Gets or sets the index. */
    public var index: Int?

    /** Gets or sets the MIME type. */
    public var mimeType: String?

    public init(codec: String? = nil, codecTag: String? = nil, comment: String? = nil, deliveryUrl: String? = nil, fileName: String? = nil, index: Int? = nil, mimeType: String? = nil) {
        self.codec = codec
        self.codecTag = codecTag
        self.comment = comment
        self.deliveryUrl = deliveryUrl
        self.fileName = fileName
        self.index = index
        self.mimeType = mimeType
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        codec = try decoderContainer.decodeIfPresent("Codec")
        codecTag = try decoderContainer.decodeIfPresent("CodecTag")
        comment = try decoderContainer.decodeIfPresent("Comment")
        deliveryUrl = try decoderContainer.decodeIfPresent("DeliveryUrl")
        fileName = try decoderContainer.decodeIfPresent("FileName")
        index = try decoderContainer.decodeIfPresent("Index")
        mimeType = try decoderContainer.decodeIfPresent("MimeType")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(codec, forKey: "Codec")
        try encoderContainer.encodeIfPresent(codecTag, forKey: "CodecTag")
        try encoderContainer.encodeIfPresent(comment, forKey: "Comment")
        try encoderContainer.encodeIfPresent(deliveryUrl, forKey: "DeliveryUrl")
        try encoderContainer.encodeIfPresent(fileName, forKey: "FileName")
        try encoderContainer.encodeIfPresent(index, forKey: "Index")
        try encoderContainer.encodeIfPresent(mimeType, forKey: "MimeType")
    }

}
