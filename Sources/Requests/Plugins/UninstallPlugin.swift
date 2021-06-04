//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Plugins {

    /** Uninstalls a plugin. */
    public enum UninstallPlugin {

        public static let service = APIService<Response>(id: "UninstallPlugin", tag: "Plugins", method: "DELETE", path: "/Plugins/{pluginId}", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["RequiresElevation", "DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Plugin id. */
                public var pluginId: ID

                public init(pluginId: ID) {
                    self.pluginId = pluginId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: UninstallPlugin.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(pluginId: ID) {
                let options = Options(pluginId: pluginId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "pluginId" + "}", with: "\(self.options.pluginId.encode())")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Plugin uninstalled. */
            case status204

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            /** Plugin not found. */
            case status404(ProblemDetailsModel)

            public var success: Void? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var failure: ProblemDetailsModel? {
                switch self {
                case .status404(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Void, ProblemDetailsModel> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status404(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status401: return 401
                case .status403: return 403
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status401: return false
                case .status403: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
                case 401: self = .status401
                case 403: self = .status403
                case 404: self = try .status404(decoder.decode(ProblemDetailsModel.self, from: data))
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
