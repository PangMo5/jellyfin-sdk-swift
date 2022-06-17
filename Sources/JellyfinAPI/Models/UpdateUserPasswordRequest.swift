//
// UpdateUserPasswordRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The update user password request body. */
public struct UpdateUserPasswordRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the current sha1-hashed password. */
    public var currentPassword: String?
    /** Gets or sets the current plain text password. */
    public var currentPw: String?
    /** Gets or sets the new plain text password. */
    public var newPw: String?
    /** Gets or sets a value indicating whether to reset the password. */
    public var resetPassword: Bool?

    public init(currentPassword: String? = nil, currentPw: String? = nil, newPw: String? = nil, resetPassword: Bool? = nil) {
        self.currentPassword = currentPassword
        self.currentPw = currentPw
        self.newPw = newPw
        self.resetPassword = resetPassword
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentPassword = "CurrentPassword"
        case currentPw = "CurrentPw"
        case newPw = "NewPw"
        case resetPassword = "ResetPassword"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currentPassword, forKey: .currentPassword)
        try container.encodeIfPresent(currentPw, forKey: .currentPw)
        try container.encodeIfPresent(newPw, forKey: .newPw)
        try container.encodeIfPresent(resetPassword, forKey: .resetPassword)
    }
}

