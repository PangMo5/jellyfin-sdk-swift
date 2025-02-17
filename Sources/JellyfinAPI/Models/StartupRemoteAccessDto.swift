//
// StartupRemoteAccessDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Startup remote access dto. */
public struct StartupRemoteAccessDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets a value indicating whether enable remote access. */
    public var enableRemoteAccess: Bool
    /** Gets or sets a value indicating whether enable automatic port mapping. */
    public var enableAutomaticPortMapping: Bool

    public init(enableRemoteAccess: Bool, enableAutomaticPortMapping: Bool) {
        self.enableRemoteAccess = enableRemoteAccess
        self.enableAutomaticPortMapping = enableAutomaticPortMapping
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enableRemoteAccess = "EnableRemoteAccess"
        case enableAutomaticPortMapping = "EnableAutomaticPortMapping"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(enableRemoteAccess, forKey: .enableRemoteAccess)
        try container.encode(enableAutomaticPortMapping, forKey: .enableAutomaticPortMapping)
    }
}

