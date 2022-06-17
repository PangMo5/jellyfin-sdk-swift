//
// AuthenticateUserByNameRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The authenticate user by name request body. */
public struct AuthenticateUserByNameRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the username. */
    public var username: String?
    /** Gets or sets the plain text password. */
    public var pw: String?
    /** Gets or sets the sha1-hashed password. */
    @available(*, deprecated, message: "This property is deprecated.")
    public var password: String?

    public init(username: String? = nil, pw: String? = nil, password: String? = nil) {
        self.username = username
        self.pw = pw
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case username = "Username"
        case pw = "Pw"
        case password = "Password"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(username, forKey: .username)
        try container.encodeIfPresent(pw, forKey: .pw)
        try container.encodeIfPresent(password, forKey: .password)
    }
}

