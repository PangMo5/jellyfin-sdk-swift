//
// ForgotPasswordPinDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Forgot Password Pin enter request body DTO. */
public struct ForgotPasswordPinDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets the entered pin to have the password reset. */
    public var pin: String

    public init(pin: String) {
        self.pin = pin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pin = "Pin"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pin, forKey: .pin)
    }
}

