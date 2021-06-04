//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct MediaSourceInfoModel: APIModel {

    public var analyzeDurationMs: Int?

    public var bitrate: Int?

    public var bufferMs: Int?

    public var container: String?

    public var defaultAudioStreamIndex: Int?

    public var defaultSubtitleStreamIndex: Int?

    public var eTag: String?

    public var encoderPath: String?

    public var encoderProtocol: MediaProtocol?

    public var formats: [String]?

    public var genPtsInput: Bool?

    public var id: String?

    public var ignoreDts: Bool?

    public var ignoreIndex: Bool?

    public var isInfiniteStream: Bool?

    /** Differentiate internet url vs local network. */
    public var isRemote: Bool?

    public var isoType: IsoType?

    public var liveStreamId: String?

    public var mediaAttachments: [MediaAttachmentModel]?

    public var mediaStreams: [MediaStreamModel]?

    public var name: String?

    public var openToken: String?

    public var path: String?

    public var `protocol`: MediaProtocol?

    public var readAtNativeFramerate: Bool?

    public var requiredHttpHeaders: [String: String]?

    public var requiresClosing: Bool?

    public var requiresLooping: Bool?

    public var requiresOpening: Bool?

    public var runTimeTicks: Int?

    public var size: Int?

    public var supportsDirectPlay: Bool?

    public var supportsDirectStream: Bool?

    public var supportsProbing: Bool?

    public var supportsTranscoding: Bool?

    public var timestamp: TransportStreamTimestamp?

    public var transcodingContainer: String?

    public var transcodingSubProtocol: String?

    public var transcodingUrl: String?

    public var type: MediaSourceType?

    public var video3DFormat: Video3DFormat?

    public var videoType: VideoType?

    public init(analyzeDurationMs: Int? = nil, bitrate: Int? = nil, bufferMs: Int? = nil, container: String? = nil, defaultAudioStreamIndex: Int? = nil, defaultSubtitleStreamIndex: Int? = nil, eTag: String? = nil, encoderPath: String? = nil, encoderProtocol: MediaProtocol? = nil, formats: [String]? = nil, genPtsInput: Bool? = nil, id: String? = nil, ignoreDts: Bool? = nil, ignoreIndex: Bool? = nil, isInfiniteStream: Bool? = nil, isRemote: Bool? = nil, isoType: IsoType? = nil, liveStreamId: String? = nil, mediaAttachments: [MediaAttachmentModel]? = nil, mediaStreams: [MediaStreamModel]? = nil, name: String? = nil, openToken: String? = nil, path: String? = nil, `protocol`: MediaProtocol? = nil, readAtNativeFramerate: Bool? = nil, requiredHttpHeaders: [String: String]? = nil, requiresClosing: Bool? = nil, requiresLooping: Bool? = nil, requiresOpening: Bool? = nil, runTimeTicks: Int? = nil, size: Int? = nil, supportsDirectPlay: Bool? = nil, supportsDirectStream: Bool? = nil, supportsProbing: Bool? = nil, supportsTranscoding: Bool? = nil, timestamp: TransportStreamTimestamp? = nil, transcodingContainer: String? = nil, transcodingSubProtocol: String? = nil, transcodingUrl: String? = nil, type: MediaSourceType? = nil, video3DFormat: Video3DFormat? = nil, videoType: VideoType? = nil) {
        self.analyzeDurationMs = analyzeDurationMs
        self.bitrate = bitrate
        self.bufferMs = bufferMs
        self.container = container
        self.defaultAudioStreamIndex = defaultAudioStreamIndex
        self.defaultSubtitleStreamIndex = defaultSubtitleStreamIndex
        self.eTag = eTag
        self.encoderPath = encoderPath
        self.encoderProtocol = encoderProtocol
        self.formats = formats
        self.genPtsInput = genPtsInput
        self.id = id
        self.ignoreDts = ignoreDts
        self.ignoreIndex = ignoreIndex
        self.isInfiniteStream = isInfiniteStream
        self.isRemote = isRemote
        self.isoType = isoType
        self.liveStreamId = liveStreamId
        self.mediaAttachments = mediaAttachments
        self.mediaStreams = mediaStreams
        self.name = name
        self.openToken = openToken
        self.path = path
        self.`protocol` = `protocol`
        self.readAtNativeFramerate = readAtNativeFramerate
        self.requiredHttpHeaders = requiredHttpHeaders
        self.requiresClosing = requiresClosing
        self.requiresLooping = requiresLooping
        self.requiresOpening = requiresOpening
        self.runTimeTicks = runTimeTicks
        self.size = size
        self.supportsDirectPlay = supportsDirectPlay
        self.supportsDirectStream = supportsDirectStream
        self.supportsProbing = supportsProbing
        self.supportsTranscoding = supportsTranscoding
        self.timestamp = timestamp
        self.transcodingContainer = transcodingContainer
        self.transcodingSubProtocol = transcodingSubProtocol
        self.transcodingUrl = transcodingUrl
        self.type = type
        self.video3DFormat = video3DFormat
        self.videoType = videoType
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        analyzeDurationMs = try decoderContainer.decodeIfPresent("AnalyzeDurationMs")
        bitrate = try decoderContainer.decodeIfPresent("Bitrate")
        bufferMs = try decoderContainer.decodeIfPresent("BufferMs")
        container = try decoderContainer.decodeIfPresent("Container")
        defaultAudioStreamIndex = try decoderContainer.decodeIfPresent("DefaultAudioStreamIndex")
        defaultSubtitleStreamIndex = try decoderContainer.decodeIfPresent("DefaultSubtitleStreamIndex")
        eTag = try decoderContainer.decodeIfPresent("ETag")
        encoderPath = try decoderContainer.decodeIfPresent("EncoderPath")
        encoderProtocol = try decoderContainer.decodeIfPresent("EncoderProtocol")
        formats = try decoderContainer.decodeArrayIfPresent("Formats")
        genPtsInput = try decoderContainer.decodeIfPresent("GenPtsInput")
        id = try decoderContainer.decodeIfPresent("Id")
        ignoreDts = try decoderContainer.decodeIfPresent("IgnoreDts")
        ignoreIndex = try decoderContainer.decodeIfPresent("IgnoreIndex")
        isInfiniteStream = try decoderContainer.decodeIfPresent("IsInfiniteStream")
        isRemote = try decoderContainer.decodeIfPresent("IsRemote")
        isoType = try decoderContainer.decodeIfPresent("IsoType")
        liveStreamId = try decoderContainer.decodeIfPresent("LiveStreamId")
        mediaAttachments = try decoderContainer.decodeArrayIfPresent("MediaAttachments")
        mediaStreams = try decoderContainer.decodeArrayIfPresent("MediaStreams")
        name = try decoderContainer.decodeIfPresent("Name")
        openToken = try decoderContainer.decodeIfPresent("OpenToken")
        path = try decoderContainer.decodeIfPresent("Path")
        `protocol` = try decoderContainer.decodeIfPresent("Protocol")
        readAtNativeFramerate = try decoderContainer.decodeIfPresent("ReadAtNativeFramerate")
        requiredHttpHeaders = try decoderContainer.decodeIfPresent("RequiredHttpHeaders")
        requiresClosing = try decoderContainer.decodeIfPresent("RequiresClosing")
        requiresLooping = try decoderContainer.decodeIfPresent("RequiresLooping")
        requiresOpening = try decoderContainer.decodeIfPresent("RequiresOpening")
        runTimeTicks = try decoderContainer.decodeIfPresent("RunTimeTicks")
        size = try decoderContainer.decodeIfPresent("Size")
        supportsDirectPlay = try decoderContainer.decodeIfPresent("SupportsDirectPlay")
        supportsDirectStream = try decoderContainer.decodeIfPresent("SupportsDirectStream")
        supportsProbing = try decoderContainer.decodeIfPresent("SupportsProbing")
        supportsTranscoding = try decoderContainer.decodeIfPresent("SupportsTranscoding")
        timestamp = try decoderContainer.decodeIfPresent("Timestamp")
        transcodingContainer = try decoderContainer.decodeIfPresent("TranscodingContainer")
        transcodingSubProtocol = try decoderContainer.decodeIfPresent("TranscodingSubProtocol")
        transcodingUrl = try decoderContainer.decodeIfPresent("TranscodingUrl")
        type = try decoderContainer.decodeIfPresent("Type")
        video3DFormat = try decoderContainer.decodeIfPresent("Video3DFormat")
        videoType = try decoderContainer.decodeIfPresent("VideoType")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(analyzeDurationMs, forKey: "AnalyzeDurationMs")
        try encoderContainer.encodeIfPresent(bitrate, forKey: "Bitrate")
        try encoderContainer.encodeIfPresent(bufferMs, forKey: "BufferMs")
        try encoderContainer.encodeIfPresent(container, forKey: "Container")
        try encoderContainer.encodeIfPresent(defaultAudioStreamIndex, forKey: "DefaultAudioStreamIndex")
        try encoderContainer.encodeIfPresent(defaultSubtitleStreamIndex, forKey: "DefaultSubtitleStreamIndex")
        try encoderContainer.encodeIfPresent(eTag, forKey: "ETag")
        try encoderContainer.encodeIfPresent(encoderPath, forKey: "EncoderPath")
        try encoderContainer.encodeIfPresent(encoderProtocol, forKey: "EncoderProtocol")
        try encoderContainer.encodeIfPresent(formats, forKey: "Formats")
        try encoderContainer.encodeIfPresent(genPtsInput, forKey: "GenPtsInput")
        try encoderContainer.encodeIfPresent(id, forKey: "Id")
        try encoderContainer.encodeIfPresent(ignoreDts, forKey: "IgnoreDts")
        try encoderContainer.encodeIfPresent(ignoreIndex, forKey: "IgnoreIndex")
        try encoderContainer.encodeIfPresent(isInfiniteStream, forKey: "IsInfiniteStream")
        try encoderContainer.encodeIfPresent(isRemote, forKey: "IsRemote")
        try encoderContainer.encodeIfPresent(isoType, forKey: "IsoType")
        try encoderContainer.encodeIfPresent(liveStreamId, forKey: "LiveStreamId")
        try encoderContainer.encodeIfPresent(mediaAttachments, forKey: "MediaAttachments")
        try encoderContainer.encodeIfPresent(mediaStreams, forKey: "MediaStreams")
        try encoderContainer.encodeIfPresent(name, forKey: "Name")
        try encoderContainer.encodeIfPresent(openToken, forKey: "OpenToken")
        try encoderContainer.encodeIfPresent(path, forKey: "Path")
        try encoderContainer.encodeIfPresent(`protocol`, forKey: "Protocol")
        try encoderContainer.encodeIfPresent(readAtNativeFramerate, forKey: "ReadAtNativeFramerate")
        try encoderContainer.encodeIfPresent(requiredHttpHeaders, forKey: "RequiredHttpHeaders")
        try encoderContainer.encodeIfPresent(requiresClosing, forKey: "RequiresClosing")
        try encoderContainer.encodeIfPresent(requiresLooping, forKey: "RequiresLooping")
        try encoderContainer.encodeIfPresent(requiresOpening, forKey: "RequiresOpening")
        try encoderContainer.encodeIfPresent(runTimeTicks, forKey: "RunTimeTicks")
        try encoderContainer.encodeIfPresent(size, forKey: "Size")
        try encoderContainer.encodeIfPresent(supportsDirectPlay, forKey: "SupportsDirectPlay")
        try encoderContainer.encodeIfPresent(supportsDirectStream, forKey: "SupportsDirectStream")
        try encoderContainer.encodeIfPresent(supportsProbing, forKey: "SupportsProbing")
        try encoderContainer.encodeIfPresent(supportsTranscoding, forKey: "SupportsTranscoding")
        try encoderContainer.encodeIfPresent(timestamp, forKey: "Timestamp")
        try encoderContainer.encodeIfPresent(transcodingContainer, forKey: "TranscodingContainer")
        try encoderContainer.encodeIfPresent(transcodingSubProtocol, forKey: "TranscodingSubProtocol")
        try encoderContainer.encodeIfPresent(transcodingUrl, forKey: "TranscodingUrl")
        try encoderContainer.encodeIfPresent(type, forKey: "Type")
        try encoderContainer.encodeIfPresent(video3DFormat, forKey: "Video3DFormat")
        try encoderContainer.encodeIfPresent(videoType, forKey: "VideoType")
    }

}
