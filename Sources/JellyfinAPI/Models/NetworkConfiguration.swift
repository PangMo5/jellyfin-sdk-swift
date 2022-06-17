//
// NetworkConfiguration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines the Jellyfin.Networking.Configuration.NetworkConfiguration. */
public struct NetworkConfiguration: Codable, Hashable {

    /** Gets or sets a value indicating whether the server should force connections over HTTPS. */
    public var requireHttps: Bool?
    /** Gets or sets the filesystem path of an X.509 certificate to use for SSL. */
    public var certificatePath: String?
    /** Gets or sets the password required to access the X.509 certificate data in the file specified by Jellyfin.Networking.Configuration.NetworkConfiguration.CertificatePath. */
    public var certificatePassword: String?
    /** Gets or sets a value used to specify the URL prefix that your Jellyfin instance can be accessed at. */
    public var baseUrl: String?
    /** Gets or sets the public HTTPS port. */
    public var publicHttpsPort: Int?
    /** Gets or sets the HTTP server port number. */
    public var httpServerPortNumber: Int?
    /** Gets or sets the HTTPS server port number. */
    public var httpsPortNumber: Int?
    /** Gets or sets a value indicating whether to use HTTPS. */
    public var enableHttps: Bool?
    /** Gets or sets the public mapped port. */
    public var publicPort: Int?
    /** Gets or sets a value indicating whether the http port should be mapped as part of UPnP automatic port forwarding. */
    public var uPnPCreateHttpPortMap: Bool?
    /** Gets or sets the UDPPortRange. */
    public var uDPPortRange: String?
    /** Gets or sets a value indicating whether gets or sets IPV6 capability. */
    public var enableIPV6: Bool?
    /** Gets or sets a value indicating whether gets or sets IPV4 capability. */
    public var enableIPV4: Bool?
    /** Gets or sets a value indicating whether detailed SSDP logs are sent to the console/log.  \&quot;Emby.Dlna\&quot;: \&quot;Debug\&quot; must be set in logging.default.json for this property to have any effect. */
    public var enableSSDPTracing: Bool?
    /** Gets or sets the SSDPTracingFilter  Gets or sets a value indicating whether an IP address is to be used to filter the detailed ssdp logs that are being sent to the console/log.  If the setting \&quot;Emby.Dlna\&quot;: \&quot;Debug\&quot; msut be set in logging.default.json for this property to work. */
    public var sSDPTracingFilter: String?
    /** Gets or sets the number of times SSDP UDP messages are sent. */
    public var uDPSendCount: Int?
    /** Gets or sets the delay between each groups of SSDP messages (in ms). */
    public var uDPSendDelay: Int?
    /** Gets or sets a value indicating whether address names that match Jellyfin.Networking.Configuration.NetworkConfiguration.VirtualInterfaceNames should be Ignore for the purposes of binding. */
    public var ignoreVirtualInterfaces: Bool?
    /** Gets or sets a value indicating the interfaces that should be ignored. The list can be comma separated. &lt;seealso cref&#x3D;\&quot;P:Jellyfin.Networking.Configuration.NetworkConfiguration.IgnoreVirtualInterfaces\&quot; /&gt;. */
    public var virtualInterfaceNames: String?
    /** Gets or sets the time (in seconds) between the pings of SSDP gateway monitor. */
    public var gatewayMonitorPeriod: Int?
    /** Gets a value indicating whether multi-socket binding is available. */
    public var enableMultiSocketBinding: Bool?
    /** Gets or sets a value indicating whether all IPv6 interfaces should be treated as on the internal network.  Depending on the address range implemented ULA ranges might not be used. */
    public var trustAllIP6Interfaces: Bool?
    /** Gets or sets the ports that HDHomerun uses. */
    public var hDHomerunPortRange: String?
    /** Gets or sets the PublishedServerUriBySubnet  Gets or sets PublishedServerUri to advertise for specific subnets. */
    public var publishedServerUriBySubnet: [String]?
    /** Gets or sets a value indicating whether Autodiscovery tracing is enabled. */
    public var autoDiscoveryTracing: Bool?
    /** Gets or sets a value indicating whether Autodiscovery is enabled. */
    public var autoDiscovery: Bool?
    /** Gets or sets the filter for remote IP connectivity. Used in conjuntion with &lt;seealso cref&#x3D;\&quot;P:Jellyfin.Networking.Configuration.NetworkConfiguration.IsRemoteIPFilterBlacklist\&quot; /&gt;. */
    public var remoteIPFilter: [String]?
    /** Gets or sets a value indicating whether &lt;seealso cref&#x3D;\&quot;P:Jellyfin.Networking.Configuration.NetworkConfiguration.RemoteIPFilter\&quot; /&gt; contains a blacklist or a whitelist. Default is a whitelist. */
    public var isRemoteIPFilterBlacklist: Bool?
    /** Gets or sets a value indicating whether to enable automatic port forwarding. */
    public var enableUPnP: Bool?
    /** Gets or sets a value indicating whether access outside of the LAN is permitted. */
    public var enableRemoteAccess: Bool?
    /** Gets or sets the subnets that are deemed to make up the LAN. */
    public var localNetworkSubnets: [String]?
    /** Gets or sets the interface addresses which Jellyfin will bind to. If empty, all interfaces will be used. */
    public var localNetworkAddresses: [String]?
    /** Gets or sets the known proxies. If the proxy is a network, it&#39;s added to the KnownNetworks. */
    public var knownProxies: [String]?
    /** Gets or sets a value indicating whether the published server uri is based on information in HTTP requests. */
    public var enablePublishedServerUriByRequest: Bool?

    public init(requireHttps: Bool? = nil, certificatePath: String? = nil, certificatePassword: String? = nil, baseUrl: String? = nil, publicHttpsPort: Int? = nil, httpServerPortNumber: Int? = nil, httpsPortNumber: Int? = nil, enableHttps: Bool? = nil, publicPort: Int? = nil, uPnPCreateHttpPortMap: Bool? = nil, uDPPortRange: String? = nil, enableIPV6: Bool? = nil, enableIPV4: Bool? = nil, enableSSDPTracing: Bool? = nil, sSDPTracingFilter: String? = nil, uDPSendCount: Int? = nil, uDPSendDelay: Int? = nil, ignoreVirtualInterfaces: Bool? = nil, virtualInterfaceNames: String? = nil, gatewayMonitorPeriod: Int? = nil, enableMultiSocketBinding: Bool? = nil, trustAllIP6Interfaces: Bool? = nil, hDHomerunPortRange: String? = nil, publishedServerUriBySubnet: [String]? = nil, autoDiscoveryTracing: Bool? = nil, autoDiscovery: Bool? = nil, remoteIPFilter: [String]? = nil, isRemoteIPFilterBlacklist: Bool? = nil, enableUPnP: Bool? = nil, enableRemoteAccess: Bool? = nil, localNetworkSubnets: [String]? = nil, localNetworkAddresses: [String]? = nil, knownProxies: [String]? = nil, enablePublishedServerUriByRequest: Bool? = nil) {
        self.requireHttps = requireHttps
        self.certificatePath = certificatePath
        self.certificatePassword = certificatePassword
        self.baseUrl = baseUrl
        self.publicHttpsPort = publicHttpsPort
        self.httpServerPortNumber = httpServerPortNumber
        self.httpsPortNumber = httpsPortNumber
        self.enableHttps = enableHttps
        self.publicPort = publicPort
        self.uPnPCreateHttpPortMap = uPnPCreateHttpPortMap
        self.uDPPortRange = uDPPortRange
        self.enableIPV6 = enableIPV6
        self.enableIPV4 = enableIPV4
        self.enableSSDPTracing = enableSSDPTracing
        self.sSDPTracingFilter = sSDPTracingFilter
        self.uDPSendCount = uDPSendCount
        self.uDPSendDelay = uDPSendDelay
        self.ignoreVirtualInterfaces = ignoreVirtualInterfaces
        self.virtualInterfaceNames = virtualInterfaceNames
        self.gatewayMonitorPeriod = gatewayMonitorPeriod
        self.enableMultiSocketBinding = enableMultiSocketBinding
        self.trustAllIP6Interfaces = trustAllIP6Interfaces
        self.hDHomerunPortRange = hDHomerunPortRange
        self.publishedServerUriBySubnet = publishedServerUriBySubnet
        self.autoDiscoveryTracing = autoDiscoveryTracing
        self.autoDiscovery = autoDiscovery
        self.remoteIPFilter = remoteIPFilter
        self.isRemoteIPFilterBlacklist = isRemoteIPFilterBlacklist
        self.enableUPnP = enableUPnP
        self.enableRemoteAccess = enableRemoteAccess
        self.localNetworkSubnets = localNetworkSubnets
        self.localNetworkAddresses = localNetworkAddresses
        self.knownProxies = knownProxies
        self.enablePublishedServerUriByRequest = enablePublishedServerUriByRequest
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requireHttps = "RequireHttps"
        case certificatePath = "CertificatePath"
        case certificatePassword = "CertificatePassword"
        case baseUrl = "BaseUrl"
        case publicHttpsPort = "PublicHttpsPort"
        case httpServerPortNumber = "HttpServerPortNumber"
        case httpsPortNumber = "HttpsPortNumber"
        case enableHttps = "EnableHttps"
        case publicPort = "PublicPort"
        case uPnPCreateHttpPortMap = "UPnPCreateHttpPortMap"
        case uDPPortRange = "UDPPortRange"
        case enableIPV6 = "EnableIPV6"
        case enableIPV4 = "EnableIPV4"
        case enableSSDPTracing = "EnableSSDPTracing"
        case sSDPTracingFilter = "SSDPTracingFilter"
        case uDPSendCount = "UDPSendCount"
        case uDPSendDelay = "UDPSendDelay"
        case ignoreVirtualInterfaces = "IgnoreVirtualInterfaces"
        case virtualInterfaceNames = "VirtualInterfaceNames"
        case gatewayMonitorPeriod = "GatewayMonitorPeriod"
        case enableMultiSocketBinding = "EnableMultiSocketBinding"
        case trustAllIP6Interfaces = "TrustAllIP6Interfaces"
        case hDHomerunPortRange = "HDHomerunPortRange"
        case publishedServerUriBySubnet = "PublishedServerUriBySubnet"
        case autoDiscoveryTracing = "AutoDiscoveryTracing"
        case autoDiscovery = "AutoDiscovery"
        case remoteIPFilter = "RemoteIPFilter"
        case isRemoteIPFilterBlacklist = "IsRemoteIPFilterBlacklist"
        case enableUPnP = "EnableUPnP"
        case enableRemoteAccess = "EnableRemoteAccess"
        case localNetworkSubnets = "LocalNetworkSubnets"
        case localNetworkAddresses = "LocalNetworkAddresses"
        case knownProxies = "KnownProxies"
        case enablePublishedServerUriByRequest = "EnablePublishedServerUriByRequest"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(requireHttps, forKey: .requireHttps)
        try encoderContainer.encodeIfPresent(certificatePath, forKey: .certificatePath)
        try encoderContainer.encodeIfPresent(certificatePassword, forKey: .certificatePassword)
        try encoderContainer.encodeIfPresent(baseUrl, forKey: .baseUrl)
        try encoderContainer.encodeIfPresent(publicHttpsPort, forKey: .publicHttpsPort)
        try encoderContainer.encodeIfPresent(httpServerPortNumber, forKey: .httpServerPortNumber)
        try encoderContainer.encodeIfPresent(httpsPortNumber, forKey: .httpsPortNumber)
        try encoderContainer.encodeIfPresent(enableHttps, forKey: .enableHttps)
        try encoderContainer.encodeIfPresent(publicPort, forKey: .publicPort)
        try encoderContainer.encodeIfPresent(uPnPCreateHttpPortMap, forKey: .uPnPCreateHttpPortMap)
        try encoderContainer.encodeIfPresent(uDPPortRange, forKey: .uDPPortRange)
        try encoderContainer.encodeIfPresent(enableIPV6, forKey: .enableIPV6)
        try encoderContainer.encodeIfPresent(enableIPV4, forKey: .enableIPV4)
        try encoderContainer.encodeIfPresent(enableSSDPTracing, forKey: .enableSSDPTracing)
        try encoderContainer.encodeIfPresent(sSDPTracingFilter, forKey: .sSDPTracingFilter)
        try encoderContainer.encodeIfPresent(uDPSendCount, forKey: .uDPSendCount)
        try encoderContainer.encodeIfPresent(uDPSendDelay, forKey: .uDPSendDelay)
        try encoderContainer.encodeIfPresent(ignoreVirtualInterfaces, forKey: .ignoreVirtualInterfaces)
        try encoderContainer.encodeIfPresent(virtualInterfaceNames, forKey: .virtualInterfaceNames)
        try encoderContainer.encodeIfPresent(gatewayMonitorPeriod, forKey: .gatewayMonitorPeriod)
        try encoderContainer.encodeIfPresent(enableMultiSocketBinding, forKey: .enableMultiSocketBinding)
        try encoderContainer.encodeIfPresent(trustAllIP6Interfaces, forKey: .trustAllIP6Interfaces)
        try encoderContainer.encodeIfPresent(hDHomerunPortRange, forKey: .hDHomerunPortRange)
        try encoderContainer.encodeIfPresent(publishedServerUriBySubnet, forKey: .publishedServerUriBySubnet)
        try encoderContainer.encodeIfPresent(autoDiscoveryTracing, forKey: .autoDiscoveryTracing)
        try encoderContainer.encodeIfPresent(autoDiscovery, forKey: .autoDiscovery)
        try encoderContainer.encodeIfPresent(remoteIPFilter, forKey: .remoteIPFilter)
        try encoderContainer.encodeIfPresent(isRemoteIPFilterBlacklist, forKey: .isRemoteIPFilterBlacklist)
        try encoderContainer.encodeIfPresent(enableUPnP, forKey: .enableUPnP)
        try encoderContainer.encodeIfPresent(enableRemoteAccess, forKey: .enableRemoteAccess)
        try encoderContainer.encodeIfPresent(localNetworkSubnets, forKey: .localNetworkSubnets)
        try encoderContainer.encodeIfPresent(localNetworkAddresses, forKey: .localNetworkAddresses)
        try encoderContainer.encodeIfPresent(knownProxies, forKey: .knownProxies)
        try encoderContainer.encodeIfPresent(enablePublishedServerUriByRequest, forKey: .enablePublishedServerUriByRequest)
    }
}
