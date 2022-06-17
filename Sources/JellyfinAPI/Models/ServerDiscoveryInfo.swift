//
// ServerDiscoveryInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The server discovery info model. */
public struct ServerDiscoveryInfo: Codable, JSONEncodable, Hashable {

    /** Gets the address. */
    public var address: String?
    /** Gets the server identifier. */
    public var id: String?
    /** Gets the name. */
    public var name: String?
    /** Gets the endpoint address. */
    public var endpointAddress: String?

    public init(address: String? = nil, id: String? = nil, name: String? = nil, endpointAddress: String? = nil) {
        self.address = address
        self.id = id
        self.name = name
        self.endpointAddress = endpointAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address = "Address"
        case id = "Id"
        case name = "Name"
        case endpointAddress = "EndpointAddress"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(endpointAddress, forKey: .endpointAddress)
    }
}

