//
// ForgotPasswordResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ForgotPasswordResult: Codable, JSONEncodable, Hashable {

    /** Gets or sets the action. */
    public var action: ForgotPasswordAction?
    /** Gets or sets the pin file. */
    public var pinFile: String?
    /** Gets or sets the pin expiration date. */
    public var pinExpirationDate: Date?

    public init(action: ForgotPasswordAction? = nil, pinFile: String? = nil, pinExpirationDate: Date? = nil) {
        self.action = action
        self.pinFile = pinFile
        self.pinExpirationDate = pinExpirationDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case action = "Action"
        case pinFile = "PinFile"
        case pinExpirationDate = "PinExpirationDate"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(pinFile, forKey: .pinFile)
        try container.encodeIfPresent(pinExpirationDate, forKey: .pinExpirationDate)
    }
}

