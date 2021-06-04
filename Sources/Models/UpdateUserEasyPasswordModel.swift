//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The update user easy password request body. */
public struct UpdateUserEasyPasswordModel: APIModel {

    /** Gets or sets the new sha1-hashed password. */
    public var newPassword: String?

    /** Gets or sets the new password. */
    public var newPw: String?

    /** Gets or sets a value indicating whether to reset the password. */
    public var resetPassword: Bool?

    public init(newPassword: String? = nil, newPw: String? = nil, resetPassword: Bool? = nil) {
        self.newPassword = newPassword
        self.newPw = newPw
        self.resetPassword = resetPassword
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        newPassword = try decoderContainer.decodeIfPresent("NewPassword")
        newPw = try decoderContainer.decodeIfPresent("NewPw")
        resetPassword = try decoderContainer.decodeIfPresent("ResetPassword")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(newPassword, forKey: "NewPassword")
        try encoderContainer.encodeIfPresent(newPw, forKey: "NewPw")
        try encoderContainer.encodeIfPresent(resetPassword, forKey: "ResetPassword")
    }

}