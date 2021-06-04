//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.SyncPlay {

    /** Join an existing SyncPlay group. */
    public enum SyncPlayJoinGroup {

        public static let service = APIService<Response>(id: "SyncPlayJoinGroup", tag: "SyncPlay", method: "POST", path: "/SyncPlay/Join", hasBody: true, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["SyncPlayJoinGroup", "SyncPlayHasAccess"])])

        public final class Request: APIRequest<Response> {

            public var body: JoinGroupRequestDtoModel

            public init(body: JoinGroupRequestDtoModel, encoder: RequestEncoder? = nil) {
                self.body = body
                super.init(service: SyncPlayJoinGroup.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Group join successful. */
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
