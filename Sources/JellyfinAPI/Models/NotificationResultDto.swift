//
// NotificationResultDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A list of notifications with the total record count for pagination. */
public struct NotificationResultDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets the current page of notifications. */
    public var notifications: [NotificationDto]?
    /** Gets or sets the total number of notifications. */
    public var totalRecordCount: Int?

    public init(notifications: [NotificationDto]? = nil, totalRecordCount: Int? = nil) {
        self.notifications = notifications
        self.totalRecordCount = totalRecordCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case notifications = "Notifications"
        case totalRecordCount = "TotalRecordCount"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(notifications, forKey: .notifications)
        try container.encodeIfPresent(totalRecordCount, forKey: .totalRecordCount)
    }
}

