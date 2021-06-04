//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.UniversalAudio {

    /** Gets an audio stream. */
    public enum GetUniversalAudioStream {

        public static let service = APIService<Response>(id: "GetUniversalAudioStream", tag: "UniversalAudio", method: "GET", path: "/Audio/{itemId}/universal", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The item id. */
                public var itemId: ID

                /** Optional. The audio container. */
                public var container: [String]?

                /** The media version id, if playing an alternate version. */
                public var mediaSourceId: String?

                /** The device id of the client requesting. Used to stop encoding processes when needed. */
                public var deviceId: String?

                /** Optional. The user id. */
                public var userId: ID?

                /** Optional. The audio codec to transcode to. */
                public var audioCodec: String?

                /** Optional. The maximum number of audio channels. */
                public var maxAudioChannels: Int?

                /** Optional. The number of how many audio channels to transcode to. */
                public var transcodingAudioChannels: Int?

                /** Optional. The maximum streaming bitrate. */
                public var maxStreamingBitrate: Int?

                /** Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. */
                public var audioBitRate: Int?

                /** Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms. */
                public var startTimeTicks: Int?

                /** Optional. The container to transcode to. */
                public var transcodingContainer: String?

                /** Optional. The transcoding protocol. */
                public var transcodingProtocol: String?

                /** Optional. The maximum audio sample rate. */
                public var maxAudioSampleRate: Int?

                /** Optional. The maximum audio bit depth. */
                public var maxAudioBitDepth: Int?

                /** Optional. Whether to enable remote media. */
                public var enableRemoteMedia: Bool?

                /** Optional. Whether to break on non key frames. */
                public var breakOnNonKeyFrames: Bool?

                /** Whether to enable redirection. Defaults to true. */
                public var enableRedirection: Bool?

                public init(itemId: ID, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: ID? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil) {
                    self.itemId = itemId
                    self.container = container
                    self.mediaSourceId = mediaSourceId
                    self.deviceId = deviceId
                    self.userId = userId
                    self.audioCodec = audioCodec
                    self.maxAudioChannels = maxAudioChannels
                    self.transcodingAudioChannels = transcodingAudioChannels
                    self.maxStreamingBitrate = maxStreamingBitrate
                    self.audioBitRate = audioBitRate
                    self.startTimeTicks = startTimeTicks
                    self.transcodingContainer = transcodingContainer
                    self.transcodingProtocol = transcodingProtocol
                    self.maxAudioSampleRate = maxAudioSampleRate
                    self.maxAudioBitDepth = maxAudioBitDepth
                    self.enableRemoteMedia = enableRemoteMedia
                    self.breakOnNonKeyFrames = breakOnNonKeyFrames
                    self.enableRedirection = enableRedirection
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetUniversalAudioStream.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(itemId: ID, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: ID? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil) {
                let options = Options(itemId: itemId, container: container, mediaSourceId: mediaSourceId, deviceId: deviceId, userId: userId, audioCodec: audioCodec, maxAudioChannels: maxAudioChannels, transcodingAudioChannels: transcodingAudioChannels, maxStreamingBitrate: maxStreamingBitrate, audioBitRate: audioBitRate, startTimeTicks: startTimeTicks, transcodingContainer: transcodingContainer, transcodingProtocol: transcodingProtocol, maxAudioSampleRate: maxAudioSampleRate, maxAudioBitDepth: maxAudioBitDepth, enableRemoteMedia: enableRemoteMedia, breakOnNonKeyFrames: breakOnNonKeyFrames, enableRedirection: enableRedirection)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId.encode())")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let container = options.container?.joined(separator: ",") {
                  params["container"] = container
                }
                if let mediaSourceId = options.mediaSourceId {
                  params["mediaSourceId"] = mediaSourceId
                }
                if let deviceId = options.deviceId {
                  params["deviceId"] = deviceId
                }
                if let userId = options.userId?.encode() {
                  params["userId"] = userId
                }
                if let audioCodec = options.audioCodec {
                  params["audioCodec"] = audioCodec
                }
                if let maxAudioChannels = options.maxAudioChannels {
                  params["maxAudioChannels"] = maxAudioChannels
                }
                if let transcodingAudioChannels = options.transcodingAudioChannels {
                  params["transcodingAudioChannels"] = transcodingAudioChannels
                }
                if let maxStreamingBitrate = options.maxStreamingBitrate {
                  params["maxStreamingBitrate"] = maxStreamingBitrate
                }
                if let audioBitRate = options.audioBitRate {
                  params["audioBitRate"] = audioBitRate
                }
                if let startTimeTicks = options.startTimeTicks {
                  params["startTimeTicks"] = startTimeTicks
                }
                if let transcodingContainer = options.transcodingContainer {
                  params["transcodingContainer"] = transcodingContainer
                }
                if let transcodingProtocol = options.transcodingProtocol {
                  params["transcodingProtocol"] = transcodingProtocol
                }
                if let maxAudioSampleRate = options.maxAudioSampleRate {
                  params["maxAudioSampleRate"] = maxAudioSampleRate
                }
                if let maxAudioBitDepth = options.maxAudioBitDepth {
                  params["maxAudioBitDepth"] = maxAudioBitDepth
                }
                if let enableRemoteMedia = options.enableRemoteMedia {
                  params["enableRemoteMedia"] = enableRemoteMedia
                }
                if let breakOnNonKeyFrames = options.breakOnNonKeyFrames {
                  params["breakOnNonKeyFrames"] = breakOnNonKeyFrames
                }
                if let enableRedirection = options.enableRedirection {
                  params["enableRedirection"] = enableRedirection
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = File

            /** Audio stream returned. */
            case status200(File)

            /** Redirected to remote audio stream. */
            case status302

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: File? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status302: return 302
                case .status401: return 401
                case .status403: return 403
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status302: return false
                case .status401: return false
                case .status403: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(data)
                case 302: self = .status302
                case 401: self = .status401
                case 403: self = .status403
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
