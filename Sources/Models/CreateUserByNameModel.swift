//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The create user by name request body. */
public struct CreateUserByNameModel: APIModel {

    /** Gets or sets the username. */
    public var name: String?

    /** Gets or sets the password. */
    public var password: String?

    public init(name: String? = nil, password: String? = nil) {
        self.name = name
        self.password = password
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        name = try decoderContainer.decodeIfPresent("Name")
        password = try decoderContainer.decodeIfPresent("Password")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(name, forKey: "Name")
        try encoderContainer.encodeIfPresent(password, forKey: "Password")
    }

}