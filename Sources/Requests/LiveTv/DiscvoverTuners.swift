//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.LiveTv {

    /** Discover tuners. */
    public enum DiscvoverTuners {

        public static let service = APIService<Response>(id: "DiscvoverTuners", tag: "LiveTv", method: "GET", path: "/LiveTv/Tuners/Discvover", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Only discover new tuners. */
                public var newDevicesOnly: Bool?

                public init(newDevicesOnly: Bool? = nil) {
                    self.newDevicesOnly = newDevicesOnly
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: DiscvoverTuners.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(newDevicesOnly: Bool? = nil) {
                let options = Options(newDevicesOnly: newDevicesOnly)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let newDevicesOnly = options.newDevicesOnly {
                  params["newDevicesOnly"] = newDevicesOnly
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [TunerHostInfoModel]

            /** Tuners returned. */
            case status200([TunerHostInfoModel])

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: [TunerHostInfoModel]? {
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
                case 200: self = try .status200(decoder.decode([TunerHostInfoModel].self, from: data))
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
