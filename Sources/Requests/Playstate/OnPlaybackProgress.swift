//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Playstate {

    /** Reports a user's playback progress. */
    public enum OnPlaybackProgress {

        public static let service = APIService<Response>(id: "OnPlaybackProgress", tag: "Playstate", method: "POST", path: "/Users/{userId}/PlayingItems/{itemId}/Progress", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** User id. */
                public var userId: ID

                /** Item id. */
                public var itemId: ID

                /** The id of the MediaSource. */
                public var mediaSourceId: String?

                /** Optional. The current position, in ticks. 1 tick = 10000 ms. */
                public var positionTicks: Int?

                /** The audio stream index. */
                public var audioStreamIndex: Int?

                /** The subtitle stream index. */
                public var subtitleStreamIndex: Int?

                /** Scale of 0-100. */
                public var volumeLevel: Int?

                /** The play method. */
                public var playMethod: PlayMethod?

                /** The live stream id. */
                public var liveStreamId: String?

                /** The play session id. */
                public var playSessionId: String?

                /** The repeat mode. */
                public var repeatMode: RepeatMode?

                /** Indicates if the player is paused. */
                public var isPaused: Bool?

                /** Indicates if the player is muted. */
                public var isMuted: Bool?

                public init(userId: ID, itemId: ID, mediaSourceId: String? = nil, positionTicks: Int? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, volumeLevel: Int? = nil, playMethod: PlayMethod? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, repeatMode: RepeatMode? = nil, isPaused: Bool? = nil, isMuted: Bool? = nil) {
                    self.userId = userId
                    self.itemId = itemId
                    self.mediaSourceId = mediaSourceId
                    self.positionTicks = positionTicks
                    self.audioStreamIndex = audioStreamIndex
                    self.subtitleStreamIndex = subtitleStreamIndex
                    self.volumeLevel = volumeLevel
                    self.playMethod = playMethod
                    self.liveStreamId = liveStreamId
                    self.playSessionId = playSessionId
                    self.repeatMode = repeatMode
                    self.isPaused = isPaused
                    self.isMuted = isMuted
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: OnPlaybackProgress.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(userId: ID, itemId: ID, mediaSourceId: String? = nil, positionTicks: Int? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, volumeLevel: Int? = nil, playMethod: PlayMethod? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, repeatMode: RepeatMode? = nil, isPaused: Bool? = nil, isMuted: Bool? = nil) {
                let options = Options(userId: userId, itemId: itemId, mediaSourceId: mediaSourceId, positionTicks: positionTicks, audioStreamIndex: audioStreamIndex, subtitleStreamIndex: subtitleStreamIndex, volumeLevel: volumeLevel, playMethod: playMethod, liveStreamId: liveStreamId, playSessionId: playSessionId, repeatMode: repeatMode, isPaused: isPaused, isMuted: isMuted)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "userId" + "}", with: "\(self.options.userId.encode())").replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId.encode())")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let mediaSourceId = options.mediaSourceId {
                  params["mediaSourceId"] = mediaSourceId
                }
                if let positionTicks = options.positionTicks {
                  params["positionTicks"] = positionTicks
                }
                if let audioStreamIndex = options.audioStreamIndex {
                  params["audioStreamIndex"] = audioStreamIndex
                }
                if let subtitleStreamIndex = options.subtitleStreamIndex {
                  params["subtitleStreamIndex"] = subtitleStreamIndex
                }
                if let volumeLevel = options.volumeLevel {
                  params["volumeLevel"] = volumeLevel
                }
                if let playMethod = options.playMethod?.encode() {
                  params["playMethod"] = playMethod
                }
                if let liveStreamId = options.liveStreamId {
                  params["liveStreamId"] = liveStreamId
                }
                if let playSessionId = options.playSessionId {
                  params["playSessionId"] = playSessionId
                }
                if let repeatMode = options.repeatMode?.encode() {
                  params["repeatMode"] = repeatMode
                }
                if let isPaused = options.isPaused {
                  params["isPaused"] = isPaused
                }
                if let isMuted = options.isMuted {
                  params["isMuted"] = isMuted
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Play progress recorded. */
            case status204

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: Void? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status401: return 401
                case .status403: return 403
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status401: return false
                case .status403: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
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
