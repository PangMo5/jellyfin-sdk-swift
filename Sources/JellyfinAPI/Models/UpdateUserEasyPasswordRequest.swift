//
// UpdateUserEasyPasswordRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The update user easy password request body. */
public struct UpdateUserEasyPasswordRequest: Codable, JSONEncodable, Hashable {

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

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case newPassword = "NewPassword"
        case newPw = "NewPw"
        case resetPassword = "ResetPassword"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(newPassword, forKey: .newPassword)
        try container.encodeIfPresent(newPw, forKey: .newPw)
        try container.encodeIfPresent(resetPassword, forKey: .resetPassword)
    }
}

