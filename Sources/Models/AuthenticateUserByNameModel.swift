//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The authenticate user by name request body. */
public struct AuthenticateUserByNameModel: APIModel {

    /** Gets or sets the sha1-hashed password. */
    public var password: String?

    /** Gets or sets the plain text password. */
    public var pw: String?

    /** Gets or sets the username. */
    public var username: String?

    public init(password: String? = nil, pw: String? = nil, username: String? = nil) {
        self.password = password
        self.pw = pw
        self.username = username
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        password = try decoderContainer.decodeIfPresent("Password")
        pw = try decoderContainer.decodeIfPresent("Pw")
        username = try decoderContainer.decodeIfPresent("Username")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(password, forKey: "Password")
        try encoderContainer.encodeIfPresent(pw, forKey: "Pw")
        try encoderContainer.encodeIfPresent(username, forKey: "Username")
    }

}
