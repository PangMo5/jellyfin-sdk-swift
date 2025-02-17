//
// UpdateStartupUserRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The startup user DTO. */
public struct UpdateStartupUserRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the username. */
    public var name: String?
    /** Gets or sets the user's password. */
    public var password: String?

    public init(name: String? = nil, password: String? = nil) {
        self.name = name
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case password = "Password"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(password, forKey: .password)
    }
}

