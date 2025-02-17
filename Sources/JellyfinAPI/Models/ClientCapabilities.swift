//
// ClientCapabilities.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ClientCapabilities: Codable, JSONEncodable, Hashable {

    public var playableMediaTypes: [String]?
    public var supportedCommands: [GeneralCommandType]?
    public var supportsMediaControl: Bool?
    public var supportsContentUploading: Bool?
    public var messageCallbackUrl: String?
    public var supportsPersistentIdentifier: Bool?
    public var supportsSync: Bool?
    public var deviceProfile: ClientCapabilitiesDeviceProfile?
    public var appStoreUrl: String?
    public var iconUrl: String?

    public init(playableMediaTypes: [String]? = nil, supportedCommands: [GeneralCommandType]? = nil, supportsMediaControl: Bool? = nil, supportsContentUploading: Bool? = nil, messageCallbackUrl: String? = nil, supportsPersistentIdentifier: Bool? = nil, supportsSync: Bool? = nil, deviceProfile: ClientCapabilitiesDeviceProfile? = nil, appStoreUrl: String? = nil, iconUrl: String? = nil) {
        self.playableMediaTypes = playableMediaTypes
        self.supportedCommands = supportedCommands
        self.supportsMediaControl = supportsMediaControl
        self.supportsContentUploading = supportsContentUploading
        self.messageCallbackUrl = messageCallbackUrl
        self.supportsPersistentIdentifier = supportsPersistentIdentifier
        self.supportsSync = supportsSync
        self.deviceProfile = deviceProfile
        self.appStoreUrl = appStoreUrl
        self.iconUrl = iconUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case playableMediaTypes = "PlayableMediaTypes"
        case supportedCommands = "SupportedCommands"
        case supportsMediaControl = "SupportsMediaControl"
        case supportsContentUploading = "SupportsContentUploading"
        case messageCallbackUrl = "MessageCallbackUrl"
        case supportsPersistentIdentifier = "SupportsPersistentIdentifier"
        case supportsSync = "SupportsSync"
        case deviceProfile = "DeviceProfile"
        case appStoreUrl = "AppStoreUrl"
        case iconUrl = "IconUrl"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(playableMediaTypes, forKey: .playableMediaTypes)
        try container.encodeIfPresent(supportedCommands, forKey: .supportedCommands)
        try container.encodeIfPresent(supportsMediaControl, forKey: .supportsMediaControl)
        try container.encodeIfPresent(supportsContentUploading, forKey: .supportsContentUploading)
        try container.encodeIfPresent(messageCallbackUrl, forKey: .messageCallbackUrl)
        try container.encodeIfPresent(supportsPersistentIdentifier, forKey: .supportsPersistentIdentifier)
        try container.encodeIfPresent(supportsSync, forKey: .supportsSync)
        try container.encodeIfPresent(deviceProfile, forKey: .deviceProfile)
        try container.encodeIfPresent(appStoreUrl, forKey: .appStoreUrl)
        try container.encodeIfPresent(iconUrl, forKey: .iconUrl)
    }
}

