//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Subtitle {

    /** Search remote subtitles. */
    public enum SearchRemoteSubtitles {

        public static let service = APIService<Response>(id: "SearchRemoteSubtitles", tag: "Subtitle", method: "GET", path: "/Items/{itemId}/RemoteSearch/Subtitles/{language}", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The item id. */
                public var itemId: ID

                /** The language of the subtitles. */
                public var language: String

                /** Optional. Only show subtitles which are a perfect match. */
                public var isPerfectMatch: Bool?

                public init(itemId: ID, language: String, isPerfectMatch: Bool? = nil) {
                    self.itemId = itemId
                    self.language = language
                    self.isPerfectMatch = isPerfectMatch
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: SearchRemoteSubtitles.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(itemId: ID, language: String, isPerfectMatch: Bool? = nil) {
                let options = Options(itemId: itemId, language: language, isPerfectMatch: isPerfectMatch)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId.encode())").replacingOccurrences(of: "{" + "language" + "}", with: "\(self.options.language)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let isPerfectMatch = options.isPerfectMatch {
                  params["isPerfectMatch"] = isPerfectMatch
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [RemoteSubtitleInfoModel]

            /** Subtitles retrieved. */
            case status200([RemoteSubtitleInfoModel])

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: [RemoteSubtitleInfoModel]? {
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
                case .status401: return 401
                case .status403: return 403
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status401: return false
                case .status403: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode([RemoteSubtitleInfoModel].self, from: data))
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