//
// AuthenticationResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthenticationResult: Codable, Hashable {

    public var user: UserDto?
    public var sessionInfo: SessionInfo?
    public var accessToken: String?
    public var serverId: String?

    public init(user: UserDto? = nil, sessionInfo: SessionInfo? = nil, accessToken: String? = nil, serverId: String? = nil) {
        self.user = user
        self.sessionInfo = sessionInfo
        self.accessToken = accessToken
        self.serverId = serverId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case user = "User"
        case sessionInfo = "SessionInfo"
        case accessToken = "AccessToken"
        case serverId = "ServerId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(user, forKey: .user)
        try encoderContainer.encodeIfPresent(sessionInfo, forKey: .sessionInfo)
        try encoderContainer.encodeIfPresent(accessToken, forKey: .accessToken)
        try encoderContainer.encodeIfPresent(serverId, forKey: .serverId)
    }
}