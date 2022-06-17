//
// PluginInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** This is a serializable stub class that is used by the api to provide information about installed plugins. */
public struct PluginInfo: Codable, JSONEncodable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the version. */
    public var version: String?
    /** Gets or sets the name of the configuration file. */
    public var configurationFileName: String?
    /** Gets or sets the description. */
    public var description: String?
    /** Gets or sets the unique id. */
    public var id: String?
    /** Gets or sets a value indicating whether the plugin can be uninstalled. */
    public var canUninstall: Bool?
    /** Gets or sets a value indicating whether this plugin has a valid image. */
    public var hasImage: Bool?
    /** Gets or sets a value indicating the status of the plugin. */
    public var status: PluginStatus?

    public init(name: String? = nil, version: String? = nil, configurationFileName: String? = nil, description: String? = nil, id: String? = nil, canUninstall: Bool? = nil, hasImage: Bool? = nil, status: PluginStatus? = nil) {
        self.name = name
        self.version = version
        self.configurationFileName = configurationFileName
        self.description = description
        self.id = id
        self.canUninstall = canUninstall
        self.hasImage = hasImage
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case version = "Version"
        case configurationFileName = "ConfigurationFileName"
        case description = "Description"
        case id = "Id"
        case canUninstall = "CanUninstall"
        case hasImage = "HasImage"
        case status = "Status"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(configurationFileName, forKey: .configurationFileName)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(canUninstall, forKey: .canUninstall)
        try container.encodeIfPresent(hasImage, forKey: .hasImage)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

