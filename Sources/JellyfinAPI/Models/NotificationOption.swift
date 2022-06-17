//
// NotificationOption.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotificationOption: Codable, JSONEncodable, Hashable {

    public var type: String?
    /** Gets or sets user Ids to not monitor (it's opt out). */
    public var disabledMonitorUsers: [String]?
    /** Gets or sets user Ids to send to (if SendToUserMode == Custom). */
    public var sendToUsers: [String]?
    /** Gets or sets a value indicating whether this MediaBrowser.Model.Notifications.NotificationOption is enabled. */
    public var enabled: Bool?
    /** Gets or sets the disabled services. */
    public var disabledServices: [String]?
    /** Gets or sets the send to user mode. */
    public var sendToUserMode: SendToUserType?

    public init(type: String? = nil, disabledMonitorUsers: [String]? = nil, sendToUsers: [String]? = nil, enabled: Bool? = nil, disabledServices: [String]? = nil, sendToUserMode: SendToUserType? = nil) {
        self.type = type
        self.disabledMonitorUsers = disabledMonitorUsers
        self.sendToUsers = sendToUsers
        self.enabled = enabled
        self.disabledServices = disabledServices
        self.sendToUserMode = sendToUserMode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "Type"
        case disabledMonitorUsers = "DisabledMonitorUsers"
        case sendToUsers = "SendToUsers"
        case enabled = "Enabled"
        case disabledServices = "DisabledServices"
        case sendToUserMode = "SendToUserMode"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(disabledMonitorUsers, forKey: .disabledMonitorUsers)
        try container.encodeIfPresent(sendToUsers, forKey: .sendToUsers)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(disabledServices, forKey: .disabledServices)
        try container.encodeIfPresent(sendToUserMode, forKey: .sendToUserMode)
    }
}

