//
// AdminNotificationDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The admin notification dto. */
public struct AdminNotificationDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets the notification name. */
    public var name: String?
    /** Gets or sets the notification description. */
    public var description: String?
    /** Gets or sets the notification level. */
    public var notificationLevel: NotificationLevel?
    /** Gets or sets the notification url. */
    public var url: String?

    public init(name: String? = nil, description: String? = nil, notificationLevel: NotificationLevel? = nil, url: String? = nil) {
        self.name = name
        self.description = description
        self.notificationLevel = notificationLevel
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case description = "Description"
        case notificationLevel = "NotificationLevel"
        case url = "Url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(notificationLevel, forKey: .notificationLevel)
        try container.encodeIfPresent(url, forKey: .url)
    }
}

