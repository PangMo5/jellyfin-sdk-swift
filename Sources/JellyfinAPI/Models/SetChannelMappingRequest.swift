//
// SetChannelMappingRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Set channel mapping dto. */
public struct SetChannelMappingRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the provider id. */
    public var providerId: String
    /** Gets or sets the tuner channel id. */
    public var tunerChannelId: String
    /** Gets or sets the provider channel id. */
    public var providerChannelId: String

    public init(providerId: String, tunerChannelId: String, providerChannelId: String) {
        self.providerId = providerId
        self.tunerChannelId = tunerChannelId
        self.providerChannelId = providerChannelId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case providerId = "ProviderId"
        case tunerChannelId = "TunerChannelId"
        case providerChannelId = "ProviderChannelId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(providerId, forKey: .providerId)
        try container.encode(tunerChannelId, forKey: .tunerChannelId)
        try container.encode(providerChannelId, forKey: .providerChannelId)
    }
}

