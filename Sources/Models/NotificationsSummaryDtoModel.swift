//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The notification summary DTO. */
public struct NotificationsSummaryDtoModel: APIModel {

    public var maxUnreadNotificationLevel: NotificationLevel?

    /** Gets or sets the number of unread notifications. */
    public var unreadCount: Int?

    public init(maxUnreadNotificationLevel: NotificationLevel? = nil, unreadCount: Int? = nil) {
        self.maxUnreadNotificationLevel = maxUnreadNotificationLevel
        self.unreadCount = unreadCount
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        maxUnreadNotificationLevel = try decoderContainer.decodeIfPresent("MaxUnreadNotificationLevel")
        unreadCount = try decoderContainer.decodeIfPresent("UnreadCount")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(maxUnreadNotificationLevel, forKey: "MaxUnreadNotificationLevel")
        try encoderContainer.encodeIfPresent(unreadCount, forKey: "UnreadCount")
    }

}
