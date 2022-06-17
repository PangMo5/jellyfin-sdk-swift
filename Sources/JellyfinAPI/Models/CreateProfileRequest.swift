//
// CreateProfileRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A MediaBrowser.Model.Dlna.DeviceProfile represents a set of metadata which determines which content a certain device is able to play.  &lt;br /&gt;  Specifically, it defines the supported &lt;see cref&#x3D;\&quot;P:MediaBrowser.Model.Dlna.DeviceProfile.ContainerProfiles\&quot;&gt;containers&lt;/see&gt; and  &lt;see cref&#x3D;\&quot;P:MediaBrowser.Model.Dlna.DeviceProfile.CodecProfiles\&quot;&gt;codecs&lt;/see&gt; (video and/or audio, including codec profiles and levels)  the device is able to direct play (without transcoding or remuxing),  as well as which &lt;see cref&#x3D;\&quot;P:MediaBrowser.Model.Dlna.DeviceProfile.TranscodingProfiles\&quot;&gt;containers/codecs to transcode to&lt;/see&gt; in case it isn&#39;t. */
public struct CreateProfileRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the name of this device profile. */
    public var name: String?
    /** Gets or sets the Id. */
    public var id: String?
    public var identification: DeviceProfileIdentification?
    /** Gets or sets the friendly name of the device profile, which can be shown to users. */
    public var friendlyName: String?
    /** Gets or sets the manufacturer of the device which this profile represents. */
    public var manufacturer: String?
    /** Gets or sets an url for the manufacturer of the device which this profile represents. */
    public var manufacturerUrl: String?
    /** Gets or sets the model name of the device which this profile represents. */
    public var modelName: String?
    /** Gets or sets the model description of the device which this profile represents. */
    public var modelDescription: String?
    /** Gets or sets the model number of the device which this profile represents. */
    public var modelNumber: String?
    /** Gets or sets the ModelUrl. */
    public var modelUrl: String?
    /** Gets or sets the serial number of the device which this profile represents. */
    public var serialNumber: String?
    /** Gets or sets a value indicating whether EnableAlbumArtInDidl. */
    public var enableAlbumArtInDidl: Bool? = false
    /** Gets or sets a value indicating whether EnableSingleAlbumArtLimit. */
    public var enableSingleAlbumArtLimit: Bool? = false
    /** Gets or sets a value indicating whether EnableSingleSubtitleLimit. */
    public var enableSingleSubtitleLimit: Bool? = false
    /** Gets or sets the SupportedMediaTypes. */
    public var supportedMediaTypes: String?
    /** Gets or sets the UserId. */
    public var userId: String?
    /** Gets or sets the AlbumArtPn. */
    public var albumArtPn: String?
    /** Gets or sets the MaxAlbumArtWidth. */
    public var maxAlbumArtWidth: Int?
    /** Gets or sets the MaxAlbumArtHeight. */
    public var maxAlbumArtHeight: Int?
    /** Gets or sets the maximum allowed width of embedded icons. */
    public var maxIconWidth: Int?
    /** Gets or sets the maximum allowed height of embedded icons. */
    public var maxIconHeight: Int?
    /** Gets or sets the maximum allowed bitrate for all streamed content. */
    public var maxStreamingBitrate: Int?
    /** Gets or sets the maximum allowed bitrate for statically streamed content (= direct played files). */
    public var maxStaticBitrate: Int?
    /** Gets or sets the maximum allowed bitrate for transcoded music streams. */
    public var musicStreamingTranscodingBitrate: Int?
    /** Gets or sets the maximum allowed bitrate for statically streamed (= direct played) music files. */
    public var maxStaticMusicBitrate: Int?
    /** Gets or sets the content of the aggregationFlags element in the urn:schemas-sonycom:av namespace. */
    public var sonyAggregationFlags: String?
    /** Gets or sets the ProtocolInfo. */
    public var protocolInfo: String?
    /** Gets or sets the TimelineOffsetSeconds. */
    public var timelineOffsetSeconds: Int? = 0
    /** Gets or sets a value indicating whether RequiresPlainVideoItems. */
    public var requiresPlainVideoItems: Bool? = false
    /** Gets or sets a value indicating whether RequiresPlainFolders. */
    public var requiresPlainFolders: Bool? = false
    /** Gets or sets a value indicating whether EnableMSMediaReceiverRegistrar. */
    public var enableMSMediaReceiverRegistrar: Bool? = false
    /** Gets or sets a value indicating whether IgnoreTranscodeByteRangeRequests. */
    public var ignoreTranscodeByteRangeRequests: Bool? = false
    /** Gets or sets the XmlRootAttributes. */
    public var xmlRootAttributes: [XmlAttribute]?
    /** Gets or sets the direct play profiles. */
    public var directPlayProfiles: [DirectPlayProfile]?
    /** Gets or sets the transcoding profiles. */
    public var transcodingProfiles: [TranscodingProfile]?
    /** Gets or sets the container profiles. */
    public var containerProfiles: [ContainerProfile]?
    /** Gets or sets the codec profiles. */
    public var codecProfiles: [CodecProfile]?
    /** Gets or sets the ResponseProfiles. */
    public var responseProfiles: [ResponseProfile]?
    /** Gets or sets the subtitle profiles. */
    public var subtitleProfiles: [SubtitleProfile]?

    public init(name: String? = nil, id: String? = nil, identification: DeviceProfileIdentification? = nil, friendlyName: String? = nil, manufacturer: String? = nil, manufacturerUrl: String? = nil, modelName: String? = nil, modelDescription: String? = nil, modelNumber: String? = nil, modelUrl: String? = nil, serialNumber: String? = nil, enableAlbumArtInDidl: Bool? = false, enableSingleAlbumArtLimit: Bool? = false, enableSingleSubtitleLimit: Bool? = false, supportedMediaTypes: String? = nil, userId: String? = nil, albumArtPn: String? = nil, maxAlbumArtWidth: Int? = nil, maxAlbumArtHeight: Int? = nil, maxIconWidth: Int? = nil, maxIconHeight: Int? = nil, maxStreamingBitrate: Int? = nil, maxStaticBitrate: Int? = nil, musicStreamingTranscodingBitrate: Int? = nil, maxStaticMusicBitrate: Int? = nil, sonyAggregationFlags: String? = nil, protocolInfo: String? = nil, timelineOffsetSeconds: Int? = 0, requiresPlainVideoItems: Bool? = false, requiresPlainFolders: Bool? = false, enableMSMediaReceiverRegistrar: Bool? = false, ignoreTranscodeByteRangeRequests: Bool? = false, xmlRootAttributes: [XmlAttribute]? = nil, directPlayProfiles: [DirectPlayProfile]? = nil, transcodingProfiles: [TranscodingProfile]? = nil, containerProfiles: [ContainerProfile]? = nil, codecProfiles: [CodecProfile]? = nil, responseProfiles: [ResponseProfile]? = nil, subtitleProfiles: [SubtitleProfile]? = nil) {
        self.name = name
        self.id = id
        self.identification = identification
        self.friendlyName = friendlyName
        self.manufacturer = manufacturer
        self.manufacturerUrl = manufacturerUrl
        self.modelName = modelName
        self.modelDescription = modelDescription
        self.modelNumber = modelNumber
        self.modelUrl = modelUrl
        self.serialNumber = serialNumber
        self.enableAlbumArtInDidl = enableAlbumArtInDidl
        self.enableSingleAlbumArtLimit = enableSingleAlbumArtLimit
        self.enableSingleSubtitleLimit = enableSingleSubtitleLimit
        self.supportedMediaTypes = supportedMediaTypes
        self.userId = userId
        self.albumArtPn = albumArtPn
        self.maxAlbumArtWidth = maxAlbumArtWidth
        self.maxAlbumArtHeight = maxAlbumArtHeight
        self.maxIconWidth = maxIconWidth
        self.maxIconHeight = maxIconHeight
        self.maxStreamingBitrate = maxStreamingBitrate
        self.maxStaticBitrate = maxStaticBitrate
        self.musicStreamingTranscodingBitrate = musicStreamingTranscodingBitrate
        self.maxStaticMusicBitrate = maxStaticMusicBitrate
        self.sonyAggregationFlags = sonyAggregationFlags
        self.protocolInfo = protocolInfo
        self.timelineOffsetSeconds = timelineOffsetSeconds
        self.requiresPlainVideoItems = requiresPlainVideoItems
        self.requiresPlainFolders = requiresPlainFolders
        self.enableMSMediaReceiverRegistrar = enableMSMediaReceiverRegistrar
        self.ignoreTranscodeByteRangeRequests = ignoreTranscodeByteRangeRequests
        self.xmlRootAttributes = xmlRootAttributes
        self.directPlayProfiles = directPlayProfiles
        self.transcodingProfiles = transcodingProfiles
        self.containerProfiles = containerProfiles
        self.codecProfiles = codecProfiles
        self.responseProfiles = responseProfiles
        self.subtitleProfiles = subtitleProfiles
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case id = "Id"
        case identification = "Identification"
        case friendlyName = "FriendlyName"
        case manufacturer = "Manufacturer"
        case manufacturerUrl = "ManufacturerUrl"
        case modelName = "ModelName"
        case modelDescription = "ModelDescription"
        case modelNumber = "ModelNumber"
        case modelUrl = "ModelUrl"
        case serialNumber = "SerialNumber"
        case enableAlbumArtInDidl = "EnableAlbumArtInDidl"
        case enableSingleAlbumArtLimit = "EnableSingleAlbumArtLimit"
        case enableSingleSubtitleLimit = "EnableSingleSubtitleLimit"
        case supportedMediaTypes = "SupportedMediaTypes"
        case userId = "UserId"
        case albumArtPn = "AlbumArtPn"
        case maxAlbumArtWidth = "MaxAlbumArtWidth"
        case maxAlbumArtHeight = "MaxAlbumArtHeight"
        case maxIconWidth = "MaxIconWidth"
        case maxIconHeight = "MaxIconHeight"
        case maxStreamingBitrate = "MaxStreamingBitrate"
        case maxStaticBitrate = "MaxStaticBitrate"
        case musicStreamingTranscodingBitrate = "MusicStreamingTranscodingBitrate"
        case maxStaticMusicBitrate = "MaxStaticMusicBitrate"
        case sonyAggregationFlags = "SonyAggregationFlags"
        case protocolInfo = "ProtocolInfo"
        case timelineOffsetSeconds = "TimelineOffsetSeconds"
        case requiresPlainVideoItems = "RequiresPlainVideoItems"
        case requiresPlainFolders = "RequiresPlainFolders"
        case enableMSMediaReceiverRegistrar = "EnableMSMediaReceiverRegistrar"
        case ignoreTranscodeByteRangeRequests = "IgnoreTranscodeByteRangeRequests"
        case xmlRootAttributes = "XmlRootAttributes"
        case directPlayProfiles = "DirectPlayProfiles"
        case transcodingProfiles = "TranscodingProfiles"
        case containerProfiles = "ContainerProfiles"
        case codecProfiles = "CodecProfiles"
        case responseProfiles = "ResponseProfiles"
        case subtitleProfiles = "SubtitleProfiles"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(identification, forKey: .identification)
        try container.encodeIfPresent(friendlyName, forKey: .friendlyName)
        try container.encodeIfPresent(manufacturer, forKey: .manufacturer)
        try container.encodeIfPresent(manufacturerUrl, forKey: .manufacturerUrl)
        try container.encodeIfPresent(modelName, forKey: .modelName)
        try container.encodeIfPresent(modelDescription, forKey: .modelDescription)
        try container.encodeIfPresent(modelNumber, forKey: .modelNumber)
        try container.encodeIfPresent(modelUrl, forKey: .modelUrl)
        try container.encodeIfPresent(serialNumber, forKey: .serialNumber)
        try container.encodeIfPresent(enableAlbumArtInDidl, forKey: .enableAlbumArtInDidl)
        try container.encodeIfPresent(enableSingleAlbumArtLimit, forKey: .enableSingleAlbumArtLimit)
        try container.encodeIfPresent(enableSingleSubtitleLimit, forKey: .enableSingleSubtitleLimit)
        try container.encodeIfPresent(supportedMediaTypes, forKey: .supportedMediaTypes)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(albumArtPn, forKey: .albumArtPn)
        try container.encodeIfPresent(maxAlbumArtWidth, forKey: .maxAlbumArtWidth)
        try container.encodeIfPresent(maxAlbumArtHeight, forKey: .maxAlbumArtHeight)
        try container.encodeIfPresent(maxIconWidth, forKey: .maxIconWidth)
        try container.encodeIfPresent(maxIconHeight, forKey: .maxIconHeight)
        try container.encodeIfPresent(maxStreamingBitrate, forKey: .maxStreamingBitrate)
        try container.encodeIfPresent(maxStaticBitrate, forKey: .maxStaticBitrate)
        try container.encodeIfPresent(musicStreamingTranscodingBitrate, forKey: .musicStreamingTranscodingBitrate)
        try container.encodeIfPresent(maxStaticMusicBitrate, forKey: .maxStaticMusicBitrate)
        try container.encodeIfPresent(sonyAggregationFlags, forKey: .sonyAggregationFlags)
        try container.encodeIfPresent(protocolInfo, forKey: .protocolInfo)
        try container.encodeIfPresent(timelineOffsetSeconds, forKey: .timelineOffsetSeconds)
        try container.encodeIfPresent(requiresPlainVideoItems, forKey: .requiresPlainVideoItems)
        try container.encodeIfPresent(requiresPlainFolders, forKey: .requiresPlainFolders)
        try container.encodeIfPresent(enableMSMediaReceiverRegistrar, forKey: .enableMSMediaReceiverRegistrar)
        try container.encodeIfPresent(ignoreTranscodeByteRangeRequests, forKey: .ignoreTranscodeByteRangeRequests)
        try container.encodeIfPresent(xmlRootAttributes, forKey: .xmlRootAttributes)
        try container.encodeIfPresent(directPlayProfiles, forKey: .directPlayProfiles)
        try container.encodeIfPresent(transcodingProfiles, forKey: .transcodingProfiles)
        try container.encodeIfPresent(containerProfiles, forKey: .containerProfiles)
        try container.encodeIfPresent(codecProfiles, forKey: .codecProfiles)
        try container.encodeIfPresent(responseProfiles, forKey: .responseProfiles)
        try container.encodeIfPresent(subtitleProfiles, forKey: .subtitleProfiles)
    }
}

