//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TunerHostInfoModel: APIModel {

    public var allowHWTranscoding: Bool?

    public var deviceId: String?

    public var enableStreamLooping: Bool?

    public var friendlyName: String?

    public var id: String?

    public var importFavoritesOnly: Bool?

    public var source: String?

    public var tunerCount: Int?

    public var type: String?

    public var url: String?

    public var userAgent: String?

    public init(allowHWTranscoding: Bool? = nil, deviceId: String? = nil, enableStreamLooping: Bool? = nil, friendlyName: String? = nil, id: String? = nil, importFavoritesOnly: Bool? = nil, source: String? = nil, tunerCount: Int? = nil, type: String? = nil, url: String? = nil, userAgent: String? = nil) {
        self.allowHWTranscoding = allowHWTranscoding
        self.deviceId = deviceId
        self.enableStreamLooping = enableStreamLooping
        self.friendlyName = friendlyName
        self.id = id
        self.importFavoritesOnly = importFavoritesOnly
        self.source = source
        self.tunerCount = tunerCount
        self.type = type
        self.url = url
        self.userAgent = userAgent
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        allowHWTranscoding = try decoderContainer.decodeIfPresent("AllowHWTranscoding")
        deviceId = try decoderContainer.decodeIfPresent("DeviceId")
        enableStreamLooping = try decoderContainer.decodeIfPresent("EnableStreamLooping")
        friendlyName = try decoderContainer.decodeIfPresent("FriendlyName")
        id = try decoderContainer.decodeIfPresent("Id")
        importFavoritesOnly = try decoderContainer.decodeIfPresent("ImportFavoritesOnly")
        source = try decoderContainer.decodeIfPresent("Source")
        tunerCount = try decoderContainer.decodeIfPresent("TunerCount")
        type = try decoderContainer.decodeIfPresent("Type")
        url = try decoderContainer.decodeIfPresent("Url")
        userAgent = try decoderContainer.decodeIfPresent("UserAgent")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(allowHWTranscoding, forKey: "AllowHWTranscoding")
        try encoderContainer.encodeIfPresent(deviceId, forKey: "DeviceId")
        try encoderContainer.encodeIfPresent(enableStreamLooping, forKey: "EnableStreamLooping")
        try encoderContainer.encodeIfPresent(friendlyName, forKey: "FriendlyName")
        try encoderContainer.encodeIfPresent(id, forKey: "Id")
        try encoderContainer.encodeIfPresent(importFavoritesOnly, forKey: "ImportFavoritesOnly")
        try encoderContainer.encodeIfPresent(source, forKey: "Source")
        try encoderContainer.encodeIfPresent(tunerCount, forKey: "TunerCount")
        try encoderContainer.encodeIfPresent(type, forKey: "Type")
        try encoderContainer.encodeIfPresent(url, forKey: "Url")
        try encoderContainer.encodeIfPresent(userAgent, forKey: "UserAgent")
    }

}