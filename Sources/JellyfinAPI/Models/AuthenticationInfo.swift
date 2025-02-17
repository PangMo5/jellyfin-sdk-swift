//
// AuthenticationInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthenticationInfo: Codable, JSONEncodable, Hashable {

    /** Gets or sets the identifier. */
    public var id: Int64?
    /** Gets or sets the access token. */
    public var accessToken: String?
    /** Gets or sets the device identifier. */
    public var deviceId: String?
    /** Gets or sets the name of the application. */
    public var appName: String?
    /** Gets or sets the application version. */
    public var appVersion: String?
    /** Gets or sets the name of the device. */
    public var deviceName: String?
    /** Gets or sets the user identifier. */
    public var userId: String?
    /** Gets or sets a value indicating whether this instance is active. */
    public var isActive: Bool?
    /** Gets or sets the date created. */
    public var dateCreated: Date?
    /** Gets or sets the date revoked. */
    public var dateRevoked: Date?
    public var dateLastActivity: Date?
    public var userName: String?

    public init(id: Int64? = nil, accessToken: String? = nil, deviceId: String? = nil, appName: String? = nil, appVersion: String? = nil, deviceName: String? = nil, userId: String? = nil, isActive: Bool? = nil, dateCreated: Date? = nil, dateRevoked: Date? = nil, dateLastActivity: Date? = nil, userName: String? = nil) {
        self.id = id
        self.accessToken = accessToken
        self.deviceId = deviceId
        self.appName = appName
        self.appVersion = appVersion
        self.deviceName = deviceName
        self.userId = userId
        self.isActive = isActive
        self.dateCreated = dateCreated
        self.dateRevoked = dateRevoked
        self.dateLastActivity = dateLastActivity
        self.userName = userName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case accessToken = "AccessToken"
        case deviceId = "DeviceId"
        case appName = "AppName"
        case appVersion = "AppVersion"
        case deviceName = "DeviceName"
        case userId = "UserId"
        case isActive = "IsActive"
        case dateCreated = "DateCreated"
        case dateRevoked = "DateRevoked"
        case dateLastActivity = "DateLastActivity"
        case userName = "UserName"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(deviceName, forKey: .deviceName)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(isActive, forKey: .isActive)
        try container.encodeIfPresent(dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(dateRevoked, forKey: .dateRevoked)
        try container.encodeIfPresent(dateLastActivity, forKey: .dateLastActivity)
        try container.encodeIfPresent(userName, forKey: .userName)
    }
}

