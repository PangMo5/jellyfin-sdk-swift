//
// TranscodingInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TranscodingInfo: Codable, JSONEncodable, Hashable {

    public enum TranscodeReasons: String, Codable, CaseIterable {
        case containerNotSupported = "ContainerNotSupported"
        case videoCodecNotSupported = "VideoCodecNotSupported"
        case audioCodecNotSupported = "AudioCodecNotSupported"
        case subtitleCodecNotSupported = "SubtitleCodecNotSupported"
        case audioIsExternal = "AudioIsExternal"
        case secondaryAudioNotSupported = "SecondaryAudioNotSupported"
        case videoProfileNotSupported = "VideoProfileNotSupported"
        case videoLevelNotSupported = "VideoLevelNotSupported"
        case videoResolutionNotSupported = "VideoResolutionNotSupported"
        case videoBitDepthNotSupported = "VideoBitDepthNotSupported"
        case videoFramerateNotSupported = "VideoFramerateNotSupported"
        case refFramesNotSupported = "RefFramesNotSupported"
        case anamorphicVideoNotSupported = "AnamorphicVideoNotSupported"
        case interlacedVideoNotSupported = "InterlacedVideoNotSupported"
        case audioChannelsNotSupported = "AudioChannelsNotSupported"
        case audioProfileNotSupported = "AudioProfileNotSupported"
        case audioSampleRateNotSupported = "AudioSampleRateNotSupported"
        case audioBitDepthNotSupported = "AudioBitDepthNotSupported"
        case containerBitrateExceedsLimit = "ContainerBitrateExceedsLimit"
        case videoBitrateNotSupported = "VideoBitrateNotSupported"
        case audioBitrateNotSupported = "AudioBitrateNotSupported"
        case unknownVideoStreamInfo = "UnknownVideoStreamInfo"
        case unknownAudioStreamInfo = "UnknownAudioStreamInfo"
        case directPlayError = "DirectPlayError"
    }
    public var audioCodec: String?
    public var videoCodec: String?
    public var container: String?
    public var isVideoDirect: Bool?
    public var isAudioDirect: Bool?
    public var bitrate: Int?
    public var framerate: Float?
    public var completionPercentage: Double?
    public var width: Int?
    public var height: Int?
    public var audioChannels: Int?
    public var hardwareAccelerationType: HardwareEncodingType?
    public var transcodeReasons: TranscodeReasons?

    public init(audioCodec: String? = nil, videoCodec: String? = nil, container: String? = nil, isVideoDirect: Bool? = nil, isAudioDirect: Bool? = nil, bitrate: Int? = nil, framerate: Float? = nil, completionPercentage: Double? = nil, width: Int? = nil, height: Int? = nil, audioChannels: Int? = nil, hardwareAccelerationType: HardwareEncodingType? = nil, transcodeReasons: TranscodeReasons? = nil) {
        self.audioCodec = audioCodec
        self.videoCodec = videoCodec
        self.container = container
        self.isVideoDirect = isVideoDirect
        self.isAudioDirect = isAudioDirect
        self.bitrate = bitrate
        self.framerate = framerate
        self.completionPercentage = completionPercentage
        self.width = width
        self.height = height
        self.audioChannels = audioChannels
        self.hardwareAccelerationType = hardwareAccelerationType
        self.transcodeReasons = transcodeReasons
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case audioCodec = "AudioCodec"
        case videoCodec = "VideoCodec"
        case container = "Container"
        case isVideoDirect = "IsVideoDirect"
        case isAudioDirect = "IsAudioDirect"
        case bitrate = "Bitrate"
        case framerate = "Framerate"
        case completionPercentage = "CompletionPercentage"
        case width = "Width"
        case height = "Height"
        case audioChannels = "AudioChannels"
        case hardwareAccelerationType = "HardwareAccelerationType"
        case transcodeReasons = "TranscodeReasons"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(audioCodec, forKey: .audioCodec)
        try container.encodeIfPresent(videoCodec, forKey: .videoCodec)
        try container.encodeIfPresent(container, forKey: .container)
        try container.encodeIfPresent(isVideoDirect, forKey: .isVideoDirect)
        try container.encodeIfPresent(isAudioDirect, forKey: .isAudioDirect)
        try container.encodeIfPresent(bitrate, forKey: .bitrate)
        try container.encodeIfPresent(framerate, forKey: .framerate)
        try container.encodeIfPresent(completionPercentage, forKey: .completionPercentage)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(audioChannels, forKey: .audioChannels)
        try container.encodeIfPresent(hardwareAccelerationType, forKey: .hardwareAccelerationType)
        try container.encodeIfPresent(transcodeReasons, forKey: .transcodeReasons)
    }
}

