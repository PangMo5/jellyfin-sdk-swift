//
// EncodingOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EncodingOptions: Codable, Hashable {

    public var encodingThreadCount: Int?
    public var transcodingTempPath: String?
    public var fallbackFontPath: String?
    public var enableFallbackFont: Bool?
    public var downMixAudioBoost: Double?
    public var maxMuxingQueueSize: Int?
    public var enableThrottling: Bool?
    public var throttleDelaySeconds: Int?
    public var hardwareAccelerationType: String?
    /** Gets or sets the FFmpeg path as set by the user via the UI. */
    public var encoderAppPath: String?
    /** Gets or sets the current FFmpeg path being used by the system and displayed on the transcode page. */
    public var encoderAppPathDisplay: String?
    public var vaapiDevice: String?
    public var enableTonemapping: Bool?
    public var enableVppTonemapping: Bool?
    public var tonemappingAlgorithm: String?
    public var tonemappingRange: String?
    public var tonemappingDesat: Double?
    public var tonemappingThreshold: Double?
    public var tonemappingPeak: Double?
    public var tonemappingParam: Double?
    public var h264Crf: Int?
    public var h265Crf: Int?
    public var encoderPreset: String?
    public var deinterlaceDoubleRate: Bool?
    public var deinterlaceMethod: String?
    public var enableDecodingColorDepth10Hevc: Bool?
    public var enableDecodingColorDepth10Vp9: Bool?
    public var enableEnhancedNvdecDecoder: Bool?
    public var preferSystemNativeHwDecoder: Bool?
    public var enableIntelLowPowerH264HwEncoder: Bool?
    public var enableIntelLowPowerHevcHwEncoder: Bool?
    public var enableHardwareEncoding: Bool?
    public var allowHevcEncoding: Bool?
    public var enableSubtitleExtraction: Bool?
    public var hardwareDecodingCodecs: [String]?
    public var allowOnDemandMetadataBasedKeyframeExtractionForExtensions: [String]?

    public init(encodingThreadCount: Int? = nil, transcodingTempPath: String? = nil, fallbackFontPath: String? = nil, enableFallbackFont: Bool? = nil, downMixAudioBoost: Double? = nil, maxMuxingQueueSize: Int? = nil, enableThrottling: Bool? = nil, throttleDelaySeconds: Int? = nil, hardwareAccelerationType: String? = nil, encoderAppPath: String? = nil, encoderAppPathDisplay: String? = nil, vaapiDevice: String? = nil, enableTonemapping: Bool? = nil, enableVppTonemapping: Bool? = nil, tonemappingAlgorithm: String? = nil, tonemappingRange: String? = nil, tonemappingDesat: Double? = nil, tonemappingThreshold: Double? = nil, tonemappingPeak: Double? = nil, tonemappingParam: Double? = nil, h264Crf: Int? = nil, h265Crf: Int? = nil, encoderPreset: String? = nil, deinterlaceDoubleRate: Bool? = nil, deinterlaceMethod: String? = nil, enableDecodingColorDepth10Hevc: Bool? = nil, enableDecodingColorDepth10Vp9: Bool? = nil, enableEnhancedNvdecDecoder: Bool? = nil, preferSystemNativeHwDecoder: Bool? = nil, enableIntelLowPowerH264HwEncoder: Bool? = nil, enableIntelLowPowerHevcHwEncoder: Bool? = nil, enableHardwareEncoding: Bool? = nil, allowHevcEncoding: Bool? = nil, enableSubtitleExtraction: Bool? = nil, hardwareDecodingCodecs: [String]? = nil, allowOnDemandMetadataBasedKeyframeExtractionForExtensions: [String]? = nil) {
        self.encodingThreadCount = encodingThreadCount
        self.transcodingTempPath = transcodingTempPath
        self.fallbackFontPath = fallbackFontPath
        self.enableFallbackFont = enableFallbackFont
        self.downMixAudioBoost = downMixAudioBoost
        self.maxMuxingQueueSize = maxMuxingQueueSize
        self.enableThrottling = enableThrottling
        self.throttleDelaySeconds = throttleDelaySeconds
        self.hardwareAccelerationType = hardwareAccelerationType
        self.encoderAppPath = encoderAppPath
        self.encoderAppPathDisplay = encoderAppPathDisplay
        self.vaapiDevice = vaapiDevice
        self.enableTonemapping = enableTonemapping
        self.enableVppTonemapping = enableVppTonemapping
        self.tonemappingAlgorithm = tonemappingAlgorithm
        self.tonemappingRange = tonemappingRange
        self.tonemappingDesat = tonemappingDesat
        self.tonemappingThreshold = tonemappingThreshold
        self.tonemappingPeak = tonemappingPeak
        self.tonemappingParam = tonemappingParam
        self.h264Crf = h264Crf
        self.h265Crf = h265Crf
        self.encoderPreset = encoderPreset
        self.deinterlaceDoubleRate = deinterlaceDoubleRate
        self.deinterlaceMethod = deinterlaceMethod
        self.enableDecodingColorDepth10Hevc = enableDecodingColorDepth10Hevc
        self.enableDecodingColorDepth10Vp9 = enableDecodingColorDepth10Vp9
        self.enableEnhancedNvdecDecoder = enableEnhancedNvdecDecoder
        self.preferSystemNativeHwDecoder = preferSystemNativeHwDecoder
        self.enableIntelLowPowerH264HwEncoder = enableIntelLowPowerH264HwEncoder
        self.enableIntelLowPowerHevcHwEncoder = enableIntelLowPowerHevcHwEncoder
        self.enableHardwareEncoding = enableHardwareEncoding
        self.allowHevcEncoding = allowHevcEncoding
        self.enableSubtitleExtraction = enableSubtitleExtraction
        self.hardwareDecodingCodecs = hardwareDecodingCodecs
        self.allowOnDemandMetadataBasedKeyframeExtractionForExtensions = allowOnDemandMetadataBasedKeyframeExtractionForExtensions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case encodingThreadCount = "EncodingThreadCount"
        case transcodingTempPath = "TranscodingTempPath"
        case fallbackFontPath = "FallbackFontPath"
        case enableFallbackFont = "EnableFallbackFont"
        case downMixAudioBoost = "DownMixAudioBoost"
        case maxMuxingQueueSize = "MaxMuxingQueueSize"
        case enableThrottling = "EnableThrottling"
        case throttleDelaySeconds = "ThrottleDelaySeconds"
        case hardwareAccelerationType = "HardwareAccelerationType"
        case encoderAppPath = "EncoderAppPath"
        case encoderAppPathDisplay = "EncoderAppPathDisplay"
        case vaapiDevice = "VaapiDevice"
        case enableTonemapping = "EnableTonemapping"
        case enableVppTonemapping = "EnableVppTonemapping"
        case tonemappingAlgorithm = "TonemappingAlgorithm"
        case tonemappingRange = "TonemappingRange"
        case tonemappingDesat = "TonemappingDesat"
        case tonemappingThreshold = "TonemappingThreshold"
        case tonemappingPeak = "TonemappingPeak"
        case tonemappingParam = "TonemappingParam"
        case h264Crf = "H264Crf"
        case h265Crf = "H265Crf"
        case encoderPreset = "EncoderPreset"
        case deinterlaceDoubleRate = "DeinterlaceDoubleRate"
        case deinterlaceMethod = "DeinterlaceMethod"
        case enableDecodingColorDepth10Hevc = "EnableDecodingColorDepth10Hevc"
        case enableDecodingColorDepth10Vp9 = "EnableDecodingColorDepth10Vp9"
        case enableEnhancedNvdecDecoder = "EnableEnhancedNvdecDecoder"
        case preferSystemNativeHwDecoder = "PreferSystemNativeHwDecoder"
        case enableIntelLowPowerH264HwEncoder = "EnableIntelLowPowerH264HwEncoder"
        case enableIntelLowPowerHevcHwEncoder = "EnableIntelLowPowerHevcHwEncoder"
        case enableHardwareEncoding = "EnableHardwareEncoding"
        case allowHevcEncoding = "AllowHevcEncoding"
        case enableSubtitleExtraction = "EnableSubtitleExtraction"
        case hardwareDecodingCodecs = "HardwareDecodingCodecs"
        case allowOnDemandMetadataBasedKeyframeExtractionForExtensions = "AllowOnDemandMetadataBasedKeyframeExtractionForExtensions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(encodingThreadCount, forKey: .encodingThreadCount)
        try encoderContainer.encodeIfPresent(transcodingTempPath, forKey: .transcodingTempPath)
        try encoderContainer.encodeIfPresent(fallbackFontPath, forKey: .fallbackFontPath)
        try encoderContainer.encodeIfPresent(enableFallbackFont, forKey: .enableFallbackFont)
        try encoderContainer.encodeIfPresent(downMixAudioBoost, forKey: .downMixAudioBoost)
        try encoderContainer.encodeIfPresent(maxMuxingQueueSize, forKey: .maxMuxingQueueSize)
        try encoderContainer.encodeIfPresent(enableThrottling, forKey: .enableThrottling)
        try encoderContainer.encodeIfPresent(throttleDelaySeconds, forKey: .throttleDelaySeconds)
        try encoderContainer.encodeIfPresent(hardwareAccelerationType, forKey: .hardwareAccelerationType)
        try encoderContainer.encodeIfPresent(encoderAppPath, forKey: .encoderAppPath)
        try encoderContainer.encodeIfPresent(encoderAppPathDisplay, forKey: .encoderAppPathDisplay)
        try encoderContainer.encodeIfPresent(vaapiDevice, forKey: .vaapiDevice)
        try encoderContainer.encodeIfPresent(enableTonemapping, forKey: .enableTonemapping)
        try encoderContainer.encodeIfPresent(enableVppTonemapping, forKey: .enableVppTonemapping)
        try encoderContainer.encodeIfPresent(tonemappingAlgorithm, forKey: .tonemappingAlgorithm)
        try encoderContainer.encodeIfPresent(tonemappingRange, forKey: .tonemappingRange)
        try encoderContainer.encodeIfPresent(tonemappingDesat, forKey: .tonemappingDesat)
        try encoderContainer.encodeIfPresent(tonemappingThreshold, forKey: .tonemappingThreshold)
        try encoderContainer.encodeIfPresent(tonemappingPeak, forKey: .tonemappingPeak)
        try encoderContainer.encodeIfPresent(tonemappingParam, forKey: .tonemappingParam)
        try encoderContainer.encodeIfPresent(h264Crf, forKey: .h264Crf)
        try encoderContainer.encodeIfPresent(h265Crf, forKey: .h265Crf)
        try encoderContainer.encodeIfPresent(encoderPreset, forKey: .encoderPreset)
        try encoderContainer.encodeIfPresent(deinterlaceDoubleRate, forKey: .deinterlaceDoubleRate)
        try encoderContainer.encodeIfPresent(deinterlaceMethod, forKey: .deinterlaceMethod)
        try encoderContainer.encodeIfPresent(enableDecodingColorDepth10Hevc, forKey: .enableDecodingColorDepth10Hevc)
        try encoderContainer.encodeIfPresent(enableDecodingColorDepth10Vp9, forKey: .enableDecodingColorDepth10Vp9)
        try encoderContainer.encodeIfPresent(enableEnhancedNvdecDecoder, forKey: .enableEnhancedNvdecDecoder)
        try encoderContainer.encodeIfPresent(preferSystemNativeHwDecoder, forKey: .preferSystemNativeHwDecoder)
        try encoderContainer.encodeIfPresent(enableIntelLowPowerH264HwEncoder, forKey: .enableIntelLowPowerH264HwEncoder)
        try encoderContainer.encodeIfPresent(enableIntelLowPowerHevcHwEncoder, forKey: .enableIntelLowPowerHevcHwEncoder)
        try encoderContainer.encodeIfPresent(enableHardwareEncoding, forKey: .enableHardwareEncoding)
        try encoderContainer.encodeIfPresent(allowHevcEncoding, forKey: .allowHevcEncoding)
        try encoderContainer.encodeIfPresent(enableSubtitleExtraction, forKey: .enableSubtitleExtraction)
        try encoderContainer.encodeIfPresent(hardwareDecodingCodecs, forKey: .hardwareDecodingCodecs)
        try encoderContainer.encodeIfPresent(allowOnDemandMetadataBasedKeyframeExtractionForExtensions, forKey: .allowOnDemandMetadataBasedKeyframeExtractionForExtensions)
    }
}
