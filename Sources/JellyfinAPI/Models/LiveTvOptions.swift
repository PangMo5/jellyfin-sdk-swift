//
// LiveTvOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LiveTvOptions: Codable, JSONEncodable, Hashable {

    public var guideDays: Int?
    public var recordingPath: String?
    public var movieRecordingPath: String?
    public var seriesRecordingPath: String?
    public var enableRecordingSubfolders: Bool?
    public var enableOriginalAudioWithEncodedRecordings: Bool?
    public var tunerHosts: [TunerHostInfo]?
    public var listingProviders: [ListingsProviderInfo]?
    public var prePaddingSeconds: Int?
    public var postPaddingSeconds: Int?
    public var mediaLocationsCreated: [String]?
    public var recordingPostProcessor: String?
    public var recordingPostProcessorArguments: String?

    public init(guideDays: Int? = nil, recordingPath: String? = nil, movieRecordingPath: String? = nil, seriesRecordingPath: String? = nil, enableRecordingSubfolders: Bool? = nil, enableOriginalAudioWithEncodedRecordings: Bool? = nil, tunerHosts: [TunerHostInfo]? = nil, listingProviders: [ListingsProviderInfo]? = nil, prePaddingSeconds: Int? = nil, postPaddingSeconds: Int? = nil, mediaLocationsCreated: [String]? = nil, recordingPostProcessor: String? = nil, recordingPostProcessorArguments: String? = nil) {
        self.guideDays = guideDays
        self.recordingPath = recordingPath
        self.movieRecordingPath = movieRecordingPath
        self.seriesRecordingPath = seriesRecordingPath
        self.enableRecordingSubfolders = enableRecordingSubfolders
        self.enableOriginalAudioWithEncodedRecordings = enableOriginalAudioWithEncodedRecordings
        self.tunerHosts = tunerHosts
        self.listingProviders = listingProviders
        self.prePaddingSeconds = prePaddingSeconds
        self.postPaddingSeconds = postPaddingSeconds
        self.mediaLocationsCreated = mediaLocationsCreated
        self.recordingPostProcessor = recordingPostProcessor
        self.recordingPostProcessorArguments = recordingPostProcessorArguments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guideDays = "GuideDays"
        case recordingPath = "RecordingPath"
        case movieRecordingPath = "MovieRecordingPath"
        case seriesRecordingPath = "SeriesRecordingPath"
        case enableRecordingSubfolders = "EnableRecordingSubfolders"
        case enableOriginalAudioWithEncodedRecordings = "EnableOriginalAudioWithEncodedRecordings"
        case tunerHosts = "TunerHosts"
        case listingProviders = "ListingProviders"
        case prePaddingSeconds = "PrePaddingSeconds"
        case postPaddingSeconds = "PostPaddingSeconds"
        case mediaLocationsCreated = "MediaLocationsCreated"
        case recordingPostProcessor = "RecordingPostProcessor"
        case recordingPostProcessorArguments = "RecordingPostProcessorArguments"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guideDays, forKey: .guideDays)
        try container.encodeIfPresent(recordingPath, forKey: .recordingPath)
        try container.encodeIfPresent(movieRecordingPath, forKey: .movieRecordingPath)
        try container.encodeIfPresent(seriesRecordingPath, forKey: .seriesRecordingPath)
        try container.encodeIfPresent(enableRecordingSubfolders, forKey: .enableRecordingSubfolders)
        try container.encodeIfPresent(enableOriginalAudioWithEncodedRecordings, forKey: .enableOriginalAudioWithEncodedRecordings)
        try container.encodeIfPresent(tunerHosts, forKey: .tunerHosts)
        try container.encodeIfPresent(listingProviders, forKey: .listingProviders)
        try container.encodeIfPresent(prePaddingSeconds, forKey: .prePaddingSeconds)
        try container.encodeIfPresent(postPaddingSeconds, forKey: .postPaddingSeconds)
        try container.encodeIfPresent(mediaLocationsCreated, forKey: .mediaLocationsCreated)
        try container.encodeIfPresent(recordingPostProcessor, forKey: .recordingPostProcessor)
        try container.encodeIfPresent(recordingPostProcessorArguments, forKey: .recordingPostProcessorArguments)
    }
}

