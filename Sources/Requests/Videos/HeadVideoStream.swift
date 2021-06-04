//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Videos {

    /** Gets a video stream. */
    public enum HeadVideoStream {

        public static let service = APIService<Response>(id: "HeadVideoStream", tag: "Videos", method: "HEAD", path: "/Videos/{itemId}/stream", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The item id. */
                public var itemId: ID

                /** The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv. */
                public var container: String?

                /** Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. */
                public var `static`: Bool?

                /** The streaming parameters. */
                public var params: String?

                /** The tag. */
                public var tag: String?

                /** Optional. The dlna device profile id to utilize. */
                public var deviceProfileId: String?

                /** The play session id. */
                public var playSessionId: String?

                /** The segment container. */
                public var segmentContainer: String?

                /** The segment length. */
                public var segmentLength: Int?

                /** The minimum number of segments. */
                public var minSegments: Int?

                /** The media version id, if playing an alternate version. */
                public var mediaSourceId: String?

                /** The device id of the client requesting. Used to stop encoding processes when needed. */
                public var deviceId: String?

                /** Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url's extension. Options: aac, mp3, vorbis, wma. */
                public var audioCodec: String?

                /** Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. */
                public var enableAutoStreamCopy: Bool?

                /** Whether or not to allow copying of the video stream url. */
                public var allowVideoStreamCopy: Bool?

                /** Whether or not to allow copying of the audio stream url. */
                public var allowAudioStreamCopy: Bool?

                /** Optional. Whether to break on non key frames. */
                public var breakOnNonKeyFrames: Bool?

                /** Optional. Specify a specific audio sample rate, e.g. 44100. */
                public var audioSampleRate: Int?

                /** Optional. The maximum audio bit depth. */
                public var maxAudioBitDepth: Int?

                /** Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. */
                public var audioBitRate: Int?

                /** Optional. Specify a specific number of audio channels to encode to, e.g. 2. */
                public var audioChannels: Int?

                /** Optional. Specify a maximum number of audio channels to encode to, e.g. 2. */
                public var maxAudioChannels: Int?

                /** Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. */
                public var profile: String?

                /** Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. */
                public var level: String?

                /** Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. */
                public var framerate: Float?

                /** Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. */
                public var maxFramerate: Float?

                /** Whether or not to copy timestamps when transcoding with an offset. Defaults to false. */
                public var copyTimestamps: Bool?

                /** Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms. */
                public var startTimeTicks: Int?

                /** Optional. The fixed horizontal resolution of the encoded video. */
                public var width: Int?

                /** Optional. The fixed vertical resolution of the encoded video. */
                public var height: Int?

                /** Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. */
                public var videoBitRate: Int?

                /** Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. */
                public var subtitleStreamIndex: Int?

                /** Optional. Specify the subtitle delivery method. */
                public var subtitleMethod: SubtitleDeliveryMethod?

                /** Optional. */
                public var maxRefFrames: Int?

                /** Optional. The maximum video bit depth. */
                public var maxVideoBitDepth: Int?

                /** Optional. Whether to require avc. */
                public var requireAvc: Bool?

                /** Optional. Whether to deinterlace the video. */
                public var deInterlace: Bool?

                /** Optional. Whether to require a non anamorphic stream. */
                public var requireNonAnamorphic: Bool?

                /** Optional. The maximum number of audio channels to transcode. */
                public var transcodingMaxAudioChannels: Int?

                /** Optional. The limit of how many cpu cores to use. */
                public var cpuCoreLimit: Int?

                /** The live stream id. */
                public var liveStreamId: String?

                /** Optional. Whether to enable the MpegtsM2Ts mode. */
                public var enableMpegtsM2TsMode: Bool?

                /** Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url's extension. Options: h265, h264, mpeg4, theora, vpx, wmv. */
                public var videoCodec: String?

                /** Optional. Specify a subtitle codec to encode to. */
                public var subtitleCodec: String?

                /** Optional. The transcoding reason. */
                public var transcodeReasons: String?

                /** Optional. The index of the audio stream to use. If omitted the first audio stream will be used. */
                public var audioStreamIndex: Int?

                /** Optional. The index of the video stream to use. If omitted the first video stream will be used. */
                public var videoStreamIndex: Int?

                /** Optional. The MediaBrowser.Model.Dlna.EncodingContext. */
                public var context: EncodingContext?

                /** Optional. The streaming options. */
                public var streamOptions: [String: String]?

                public init(itemId: ID, container: String? = nil, `static`: Bool? = nil, params: String? = nil, tag: String? = nil, deviceProfileId: String? = nil, playSessionId: String? = nil, segmentContainer: String? = nil, segmentLength: Int? = nil, minSegments: Int? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, audioCodec: String? = nil, enableAutoStreamCopy: Bool? = nil, allowVideoStreamCopy: Bool? = nil, allowAudioStreamCopy: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, audioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, audioBitRate: Int? = nil, audioChannels: Int? = nil, maxAudioChannels: Int? = nil, profile: String? = nil, level: String? = nil, framerate: Float? = nil, maxFramerate: Float? = nil, copyTimestamps: Bool? = nil, startTimeTicks: Int? = nil, width: Int? = nil, height: Int? = nil, videoBitRate: Int? = nil, subtitleStreamIndex: Int? = nil, subtitleMethod: SubtitleDeliveryMethod? = nil, maxRefFrames: Int? = nil, maxVideoBitDepth: Int? = nil, requireAvc: Bool? = nil, deInterlace: Bool? = nil, requireNonAnamorphic: Bool? = nil, transcodingMaxAudioChannels: Int? = nil, cpuCoreLimit: Int? = nil, liveStreamId: String? = nil, enableMpegtsM2TsMode: Bool? = nil, videoCodec: String? = nil, subtitleCodec: String? = nil, transcodeReasons: String? = nil, audioStreamIndex: Int? = nil, videoStreamIndex: Int? = nil, context: EncodingContext? = nil, streamOptions: [String: String]? = nil) {
                    self.itemId = itemId
                    self.container = container
                    self.`static` = `static`
                    self.params = params
                    self.tag = tag
                    self.deviceProfileId = deviceProfileId
                    self.playSessionId = playSessionId
                    self.segmentContainer = segmentContainer
                    self.segmentLength = segmentLength
                    self.minSegments = minSegments
                    self.mediaSourceId = mediaSourceId
                    self.deviceId = deviceId
                    self.audioCodec = audioCodec
                    self.enableAutoStreamCopy = enableAutoStreamCopy
                    self.allowVideoStreamCopy = allowVideoStreamCopy
                    self.allowAudioStreamCopy = allowAudioStreamCopy
                    self.breakOnNonKeyFrames = breakOnNonKeyFrames
                    self.audioSampleRate = audioSampleRate
                    self.maxAudioBitDepth = maxAudioBitDepth
                    self.audioBitRate = audioBitRate
                    self.audioChannels = audioChannels
                    self.maxAudioChannels = maxAudioChannels
                    self.profile = profile
                    self.level = level
                    self.framerate = framerate
                    self.maxFramerate = maxFramerate
                    self.copyTimestamps = copyTimestamps
                    self.startTimeTicks = startTimeTicks
                    self.width = width
                    self.height = height
                    self.videoBitRate = videoBitRate
                    self.subtitleStreamIndex = subtitleStreamIndex
                    self.subtitleMethod = subtitleMethod
                    self.maxRefFrames = maxRefFrames
                    self.maxVideoBitDepth = maxVideoBitDepth
                    self.requireAvc = requireAvc
                    self.deInterlace = deInterlace
                    self.requireNonAnamorphic = requireNonAnamorphic
                    self.transcodingMaxAudioChannels = transcodingMaxAudioChannels
                    self.cpuCoreLimit = cpuCoreLimit
                    self.liveStreamId = liveStreamId
                    self.enableMpegtsM2TsMode = enableMpegtsM2TsMode
                    self.videoCodec = videoCodec
                    self.subtitleCodec = subtitleCodec
                    self.transcodeReasons = transcodeReasons
                    self.audioStreamIndex = audioStreamIndex
                    self.videoStreamIndex = videoStreamIndex
                    self.context = context
                    self.streamOptions = streamOptions
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: HeadVideoStream.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(itemId: ID, container: String? = nil, `static`: Bool? = nil, params: String? = nil, tag: String? = nil, deviceProfileId: String? = nil, playSessionId: String? = nil, segmentContainer: String? = nil, segmentLength: Int? = nil, minSegments: Int? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, audioCodec: String? = nil, enableAutoStreamCopy: Bool? = nil, allowVideoStreamCopy: Bool? = nil, allowAudioStreamCopy: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, audioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, audioBitRate: Int? = nil, audioChannels: Int? = nil, maxAudioChannels: Int? = nil, profile: String? = nil, level: String? = nil, framerate: Float? = nil, maxFramerate: Float? = nil, copyTimestamps: Bool? = nil, startTimeTicks: Int? = nil, width: Int? = nil, height: Int? = nil, videoBitRate: Int? = nil, subtitleStreamIndex: Int? = nil, subtitleMethod: SubtitleDeliveryMethod? = nil, maxRefFrames: Int? = nil, maxVideoBitDepth: Int? = nil, requireAvc: Bool? = nil, deInterlace: Bool? = nil, requireNonAnamorphic: Bool? = nil, transcodingMaxAudioChannels: Int? = nil, cpuCoreLimit: Int? = nil, liveStreamId: String? = nil, enableMpegtsM2TsMode: Bool? = nil, videoCodec: String? = nil, subtitleCodec: String? = nil, transcodeReasons: String? = nil, audioStreamIndex: Int? = nil, videoStreamIndex: Int? = nil, context: EncodingContext? = nil, streamOptions: [String: String]? = nil) {
                let options = Options(itemId: itemId, container: container, `static`: `static`, params: params, tag: tag, deviceProfileId: deviceProfileId, playSessionId: playSessionId, segmentContainer: segmentContainer, segmentLength: segmentLength, minSegments: minSegments, mediaSourceId: mediaSourceId, deviceId: deviceId, audioCodec: audioCodec, enableAutoStreamCopy: enableAutoStreamCopy, allowVideoStreamCopy: allowVideoStreamCopy, allowAudioStreamCopy: allowAudioStreamCopy, breakOnNonKeyFrames: breakOnNonKeyFrames, audioSampleRate: audioSampleRate, maxAudioBitDepth: maxAudioBitDepth, audioBitRate: audioBitRate, audioChannels: audioChannels, maxAudioChannels: maxAudioChannels, profile: profile, level: level, framerate: framerate, maxFramerate: maxFramerate, copyTimestamps: copyTimestamps, startTimeTicks: startTimeTicks, width: width, height: height, videoBitRate: videoBitRate, subtitleStreamIndex: subtitleStreamIndex, subtitleMethod: subtitleMethod, maxRefFrames: maxRefFrames, maxVideoBitDepth: maxVideoBitDepth, requireAvc: requireAvc, deInterlace: deInterlace, requireNonAnamorphic: requireNonAnamorphic, transcodingMaxAudioChannels: transcodingMaxAudioChannels, cpuCoreLimit: cpuCoreLimit, liveStreamId: liveStreamId, enableMpegtsM2TsMode: enableMpegtsM2TsMode, videoCodec: videoCodec, subtitleCodec: subtitleCodec, transcodeReasons: transcodeReasons, audioStreamIndex: audioStreamIndex, videoStreamIndex: videoStreamIndex, context: context, streamOptions: streamOptions)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId.encode())")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let container = options.container {
                  params["container"] = container
                }
                if let `static` = options.`static` {
                  params["static"] = `static`
                }
                if let params = options.params {
                  params["params"] = params
                }
                if let tag = options.tag {
                  params["tag"] = tag
                }
                if let deviceProfileId = options.deviceProfileId {
                  params["deviceProfileId"] = deviceProfileId
                }
                if let playSessionId = options.playSessionId {
                  params["playSessionId"] = playSessionId
                }
                if let segmentContainer = options.segmentContainer {
                  params["segmentContainer"] = segmentContainer
                }
                if let segmentLength = options.segmentLength {
                  params["segmentLength"] = segmentLength
                }
                if let minSegments = options.minSegments {
                  params["minSegments"] = minSegments
                }
                if let mediaSourceId = options.mediaSourceId {
                  params["mediaSourceId"] = mediaSourceId
                }
                if let deviceId = options.deviceId {
                  params["deviceId"] = deviceId
                }
                if let audioCodec = options.audioCodec {
                  params["audioCodec"] = audioCodec
                }
                if let enableAutoStreamCopy = options.enableAutoStreamCopy {
                  params["enableAutoStreamCopy"] = enableAutoStreamCopy
                }
                if let allowVideoStreamCopy = options.allowVideoStreamCopy {
                  params["allowVideoStreamCopy"] = allowVideoStreamCopy
                }
                if let allowAudioStreamCopy = options.allowAudioStreamCopy {
                  params["allowAudioStreamCopy"] = allowAudioStreamCopy
                }
                if let breakOnNonKeyFrames = options.breakOnNonKeyFrames {
                  params["breakOnNonKeyFrames"] = breakOnNonKeyFrames
                }
                if let audioSampleRate = options.audioSampleRate {
                  params["audioSampleRate"] = audioSampleRate
                }
                if let maxAudioBitDepth = options.maxAudioBitDepth {
                  params["maxAudioBitDepth"] = maxAudioBitDepth
                }
                if let audioBitRate = options.audioBitRate {
                  params["audioBitRate"] = audioBitRate
                }
                if let audioChannels = options.audioChannels {
                  params["audioChannels"] = audioChannels
                }
                if let maxAudioChannels = options.maxAudioChannels {
                  params["maxAudioChannels"] = maxAudioChannels
                }
                if let profile = options.profile {
                  params["profile"] = profile
                }
                if let level = options.level {
                  params["level"] = level
                }
                if let framerate = options.framerate {
                  params["framerate"] = framerate
                }
                if let maxFramerate = options.maxFramerate {
                  params["maxFramerate"] = maxFramerate
                }
                if let copyTimestamps = options.copyTimestamps {
                  params["copyTimestamps"] = copyTimestamps
                }
                if let startTimeTicks = options.startTimeTicks {
                  params["startTimeTicks"] = startTimeTicks
                }
                if let width = options.width {
                  params["width"] = width
                }
                if let height = options.height {
                  params["height"] = height
                }
                if let videoBitRate = options.videoBitRate {
                  params["videoBitRate"] = videoBitRate
                }
                if let subtitleStreamIndex = options.subtitleStreamIndex {
                  params["subtitleStreamIndex"] = subtitleStreamIndex
                }
                if let subtitleMethod = options.subtitleMethod?.encode() {
                  params["subtitleMethod"] = subtitleMethod
                }
                if let maxRefFrames = options.maxRefFrames {
                  params["maxRefFrames"] = maxRefFrames
                }
                if let maxVideoBitDepth = options.maxVideoBitDepth {
                  params["maxVideoBitDepth"] = maxVideoBitDepth
                }
                if let requireAvc = options.requireAvc {
                  params["requireAvc"] = requireAvc
                }
                if let deInterlace = options.deInterlace {
                  params["deInterlace"] = deInterlace
                }
                if let requireNonAnamorphic = options.requireNonAnamorphic {
                  params["requireNonAnamorphic"] = requireNonAnamorphic
                }
                if let transcodingMaxAudioChannels = options.transcodingMaxAudioChannels {
                  params["transcodingMaxAudioChannels"] = transcodingMaxAudioChannels
                }
                if let cpuCoreLimit = options.cpuCoreLimit {
                  params["cpuCoreLimit"] = cpuCoreLimit
                }
                if let liveStreamId = options.liveStreamId {
                  params["liveStreamId"] = liveStreamId
                }
                if let enableMpegtsM2TsMode = options.enableMpegtsM2TsMode {
                  params["enableMpegtsM2TsMode"] = enableMpegtsM2TsMode
                }
                if let videoCodec = options.videoCodec {
                  params["videoCodec"] = videoCodec
                }
                if let subtitleCodec = options.subtitleCodec {
                  params["subtitleCodec"] = subtitleCodec
                }
                if let transcodeReasons = options.transcodeReasons {
                  params["transcodeReasons"] = transcodeReasons
                }
                if let audioStreamIndex = options.audioStreamIndex {
                  params["audioStreamIndex"] = audioStreamIndex
                }
                if let videoStreamIndex = options.videoStreamIndex {
                  params["videoStreamIndex"] = videoStreamIndex
                }
                if let context = options.context?.encode() {
                  params["context"] = context
                }
                if let streamOptions = options.streamOptions {
                  params["streamOptions"] = streamOptions
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = File

            /** Video stream returned. */
            case status200(File)

            public var success: File? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(data)
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
