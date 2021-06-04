//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This is a serializable stub class that is used by the api to provide information about installed plugins. */
public struct PluginInfoModel: APIModel {

    /** Gets or sets a value indicating whether the plugin can be uninstalled. */
    public var canUninstall: Bool?

    /** Gets or sets the name of the configuration file. */
    public var configurationFileName: String?

    /** Gets or sets the description. */
    public var description: String?

    /** Gets or sets a value indicating whether this plugin has a valid image. */
    public var hasImage: Bool?

    /** Gets or sets the unique id. */
    public var id: ID?

    /** Gets or sets the name. */
    public var name: String?

    public var status: PluginStatus?

    public var version: VersionModel?

    public init(canUninstall: Bool? = nil, configurationFileName: String? = nil, description: String? = nil, hasImage: Bool? = nil, id: ID? = nil, name: String? = nil, status: PluginStatus? = nil, version: VersionModel? = nil) {
        self.canUninstall = canUninstall
        self.configurationFileName = configurationFileName
        self.description = description
        self.hasImage = hasImage
        self.id = id
        self.name = name
        self.status = status
        self.version = version
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        canUninstall = try decoderContainer.decodeIfPresent("CanUninstall")
        configurationFileName = try decoderContainer.decodeIfPresent("ConfigurationFileName")
        description = try decoderContainer.decodeIfPresent("Description")
        hasImage = try decoderContainer.decodeIfPresent("HasImage")
        id = try decoderContainer.decodeIfPresent("Id")
        name = try decoderContainer.decodeIfPresent("Name")
        status = try decoderContainer.decodeIfPresent("Status")
        version = try decoderContainer.decodeIfPresent("Version")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(canUninstall, forKey: "CanUninstall")
        try encoderContainer.encodeIfPresent(configurationFileName, forKey: "ConfigurationFileName")
        try encoderContainer.encodeIfPresent(description, forKey: "Description")
        try encoderContainer.encodeIfPresent(hasImage, forKey: "HasImage")
        try encoderContainer.encodeIfPresent(id, forKey: "Id")
        try encoderContainer.encodeIfPresent(name, forKey: "Name")
        try encoderContainer.encodeIfPresent(status, forKey: "Status")
        try encoderContainer.encodeIfPresent(version, forKey: "Version")
    }

}
