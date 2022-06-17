//
// DeviceOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An entity representing custom options for a device. */
public struct DeviceOptions: Codable, Hashable {

    /** Gets the id. */
    public var id: Int?
    /** Gets the device id. */
    public var deviceId: String?
    /** Gets or sets the custom name. */
    public var customName: String?

    public init(id: Int? = nil, deviceId: String? = nil, customName: String? = nil) {
        self.id = id
        self.deviceId = deviceId
        self.customName = customName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case deviceId = "DeviceId"
        case customName = "CustomName"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(deviceId, forKey: .deviceId)
        try encoderContainer.encodeIfPresent(customName, forKey: .customName)
    }
}
