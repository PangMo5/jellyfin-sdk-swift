//
// ForgotPasswordAction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ForgotPasswordAction: String, Codable, CaseIterable {
    case contactAdmin = "ContactAdmin"
    case pinCode = "PinCode"
    case inNetworkRequired = "InNetworkRequired"
}
