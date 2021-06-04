//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Configuration {

    /** Updates named configuration. */
    public enum UpdateNamedConfiguration {

        public static let service = APIService<Response>(id: "UpdateNamedConfiguration", tag: "Configuration", method: "POST", path: "/System/Configuration/{key}", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["RequiresElevation", "DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Configuration key. */
                public var key: String

                public init(key: String) {
                    self.key = key
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: UpdateNamedConfiguration.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(key: String) {
                let options = Options(key: key)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "key" + "}", with: "\(self.options.key)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Named configuration updated. */
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
