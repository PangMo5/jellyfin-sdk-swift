//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.ApiKey {

    /** Get all keys. */
    public enum GetKeys {

        public static let service = APIService<Response>(id: "GetKeys", tag: "ApiKey", method: "GET", path: "/Auth/Keys", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["RequiresElevation"])])

        public final class Request: APIRequest<Response> {

            public init() {
                super.init(service: GetKeys.service)
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = AuthenticationInfoQueryResultModel

            /** Api keys retrieved. */
            case status200(AuthenticationInfoQueryResultModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: AuthenticationInfoQueryResultModel? {
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
                case 200: self = try .status200(decoder.decode(AuthenticationInfoQueryResultModel.self, from: data))
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
