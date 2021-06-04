//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Plugin security info. */
public struct PluginSecurityInfoModel: APIModel {

    /** Gets or sets a value indicating whether is mb supporter. */
    public var isMbSupporter: Bool?

    /** Gets or sets the supporter key. */
    public var supporterKey: String?

    public init(isMbSupporter: Bool? = nil, supporterKey: String? = nil) {
        self.isMbSupporter = isMbSupporter
        self.supporterKey = supporterKey
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        isMbSupporter = try decoderContainer.decodeIfPresent("IsMbSupporter")
        supporterKey = try decoderContainer.decodeIfPresent("SupporterKey")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(isMbSupporter, forKey: "IsMbSupporter")
        try encoderContainer.encodeIfPresent(supporterKey, forKey: "SupporterKey")
    }

}