//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Startup remote access dto. */
public struct StartupRemoteAccessDtoModel: APIModel {

    /** Gets or sets a value indicating whether enable automatic port mapping. */
    public var enableAutomaticPortMapping: Bool

    /** Gets or sets a value indicating whether enable remote access. */
    public var enableRemoteAccess: Bool

    public init(enableAutomaticPortMapping: Bool, enableRemoteAccess: Bool) {
        self.enableAutomaticPortMapping = enableAutomaticPortMapping
        self.enableRemoteAccess = enableRemoteAccess
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        enableAutomaticPortMapping = try decoderContainer.decode("EnableAutomaticPortMapping")
        enableRemoteAccess = try decoderContainer.decode("EnableRemoteAccess")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encode(enableAutomaticPortMapping, forKey: "EnableAutomaticPortMapping")
        try encoderContainer.encode(enableRemoteAccess, forKey: "EnableRemoteAccess")
    }

}
