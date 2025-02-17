//
// DlnaOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The DlnaOptions class contains the user definable parameters for the dlna subsystems. */
public struct DlnaOptions: Codable, JSONEncodable, Hashable {

    /** Gets or sets a value indicating whether gets or sets a value to indicate the status of the dlna playTo subsystem. */
    public var enablePlayTo: Bool?
    /** Gets or sets a value indicating whether gets or sets a value to indicate the status of the dlna server subsystem. */
    public var enableServer: Bool?
    /** Gets or sets a value indicating whether detailed dlna server logs are sent to the console/log.  If the setting \"Emby.Dlna\": \"Debug\" msut be set in logging.default.json for this property to work. */
    public var enableDebugLog: Bool?
    /** Gets or sets a value indicating whether whether detailed playTo debug logs are sent to the console/log.  If the setting \"Emby.Dlna.PlayTo\": \"Debug\" msut be set in logging.default.json for this property to work. */
    public var enablePlayToTracing: Bool?
    /** Gets or sets the ssdp client discovery interval time (in seconds).  This is the time after which the server will send a ssdp search request. */
    public var clientDiscoveryIntervalSeconds: Int?
    /** Gets or sets the frequency at which ssdp alive notifications are transmitted. */
    public var aliveMessageIntervalSeconds: Int?
    /** Gets or sets the frequency at which ssdp alive notifications are transmitted. MIGRATING - TO BE REMOVED ONCE WEB HAS BEEN ALTERED. */
    public var blastAliveMessageIntervalSeconds: Int?
    /** Gets or sets the default user account that the dlna server uses. */
    public var defaultUserId: String?
    /** Gets or sets a value indicating whether playTo device profiles should be created. */
    public var autoCreatePlayToProfiles: Bool?
    /** Gets or sets a value indicating whether to blast alive messages. */
    public var blastAliveMessages: Bool?
    /** gets or sets a value indicating whether to send only matched host. */
    public var sendOnlyMatchedHost: Bool?

    public init(enablePlayTo: Bool? = nil, enableServer: Bool? = nil, enableDebugLog: Bool? = nil, enablePlayToTracing: Bool? = nil, clientDiscoveryIntervalSeconds: Int? = nil, aliveMessageIntervalSeconds: Int? = nil, blastAliveMessageIntervalSeconds: Int? = nil, defaultUserId: String? = nil, autoCreatePlayToProfiles: Bool? = nil, blastAliveMessages: Bool? = nil, sendOnlyMatchedHost: Bool? = nil) {
        self.enablePlayTo = enablePlayTo
        self.enableServer = enableServer
        self.enableDebugLog = enableDebugLog
        self.enablePlayToTracing = enablePlayToTracing
        self.clientDiscoveryIntervalSeconds = clientDiscoveryIntervalSeconds
        self.aliveMessageIntervalSeconds = aliveMessageIntervalSeconds
        self.blastAliveMessageIntervalSeconds = blastAliveMessageIntervalSeconds
        self.defaultUserId = defaultUserId
        self.autoCreatePlayToProfiles = autoCreatePlayToProfiles
        self.blastAliveMessages = blastAliveMessages
        self.sendOnlyMatchedHost = sendOnlyMatchedHost
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enablePlayTo = "EnablePlayTo"
        case enableServer = "EnableServer"
        case enableDebugLog = "EnableDebugLog"
        case enablePlayToTracing = "EnablePlayToTracing"
        case clientDiscoveryIntervalSeconds = "ClientDiscoveryIntervalSeconds"
        case aliveMessageIntervalSeconds = "AliveMessageIntervalSeconds"
        case blastAliveMessageIntervalSeconds = "BlastAliveMessageIntervalSeconds"
        case defaultUserId = "DefaultUserId"
        case autoCreatePlayToProfiles = "AutoCreatePlayToProfiles"
        case blastAliveMessages = "BlastAliveMessages"
        case sendOnlyMatchedHost = "SendOnlyMatchedHost"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enablePlayTo, forKey: .enablePlayTo)
        try container.encodeIfPresent(enableServer, forKey: .enableServer)
        try container.encodeIfPresent(enableDebugLog, forKey: .enableDebugLog)
        try container.encodeIfPresent(enablePlayToTracing, forKey: .enablePlayToTracing)
        try container.encodeIfPresent(clientDiscoveryIntervalSeconds, forKey: .clientDiscoveryIntervalSeconds)
        try container.encodeIfPresent(aliveMessageIntervalSeconds, forKey: .aliveMessageIntervalSeconds)
        try container.encodeIfPresent(blastAliveMessageIntervalSeconds, forKey: .blastAliveMessageIntervalSeconds)
        try container.encodeIfPresent(defaultUserId, forKey: .defaultUserId)
        try container.encodeIfPresent(autoCreatePlayToProfiles, forKey: .autoCreatePlayToProfiles)
        try container.encodeIfPresent(blastAliveMessages, forKey: .blastAliveMessages)
        try container.encodeIfPresent(sendOnlyMatchedHost, forKey: .sendOnlyMatchedHost)
    }
}

