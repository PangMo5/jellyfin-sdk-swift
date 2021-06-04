//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.LiveTv {

    /** Cancels a live tv series timer. */
    public enum CancelSeriesTimer {

        public static let service = APIService<Response>(id: "CancelSeriesTimer", tag: "LiveTv", method: "DELETE", path: "/LiveTv/SeriesTimers/{timerId}", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Timer id. */
                public var timerId: String

                public init(timerId: String) {
                    self.timerId = timerId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: CancelSeriesTimer.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(timerId: String) {
                let options = Options(timerId: timerId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "timerId" + "}", with: "\(self.options.timerId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Timer cancelled. */
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
