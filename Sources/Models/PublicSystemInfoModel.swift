//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct PublicSystemInfoModel: APIModel {

    /** Gets or sets the id. */
    public var id: String?

    /** Gets or sets the local address. */
    public var localAddress: String?

    /** Gets or sets the operating system. */
    public var operatingSystem: String?

    /** Gets or sets the product name. This is the AssemblyProduct name. */
    public var productName: String?

    /** Gets or sets the name of the server. */
    public var serverName: String?

    /** Gets or sets a value indicating whether the startup wizard is completed. */
    public var startupWizardCompleted: Bool?

    /** Gets or sets the server version. */
    public var version: String?

    public init(id: String? = nil, localAddress: String? = nil, operatingSystem: String? = nil, productName: String? = nil, serverName: String? = nil, startupWizardCompleted: Bool? = nil, version: String? = nil) {
        self.id = id
        self.localAddress = localAddress
        self.operatingSystem = operatingSystem
        self.productName = productName
        self.serverName = serverName
        self.startupWizardCompleted = startupWizardCompleted
        self.version = version
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        id = try decoderContainer.decodeIfPresent("Id")
        localAddress = try decoderContainer.decodeIfPresent("LocalAddress")
        operatingSystem = try decoderContainer.decodeIfPresent("OperatingSystem")
        productName = try decoderContainer.decodeIfPresent("ProductName")
        serverName = try decoderContainer.decodeIfPresent("ServerName")
        startupWizardCompleted = try decoderContainer.decodeIfPresent("StartupWizardCompleted")
        version = try decoderContainer.decodeIfPresent("Version")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(id, forKey: "Id")
        try encoderContainer.encodeIfPresent(localAddress, forKey: "LocalAddress")
        try encoderContainer.encodeIfPresent(operatingSystem, forKey: "OperatingSystem")
        try encoderContainer.encodeIfPresent(productName, forKey: "ProductName")
        try encoderContainer.encodeIfPresent(serverName, forKey: "ServerName")
        try encoderContainer.encodeIfPresent(startupWizardCompleted, forKey: "StartupWizardCompleted")
        try encoderContainer.encodeIfPresent(version, forKey: "Version")
    }

}