//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.UserLibrary {

    /** Gets intros to play before the main media item plays. */
    public enum GetIntros {

        public static let service = APIService<Response>(id: "GetIntros", tag: "UserLibrary", method: "GET", path: "/Users/{userId}/Items/{itemId}/Intros", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** User id. */
                public var userId: ID

                /** Item id. */
                public var itemId: ID

                public init(userId: ID, itemId: ID) {
                    self.userId = userId
                    self.itemId = itemId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetIntros.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(userId: ID, itemId: ID) {
                let options = Options(userId: userId, itemId: itemId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "userId" + "}", with: "\(self.options.userId.encode())").replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId.encode())")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = BaseItemDtoQueryResultModel

            /** Intros returned. */
            case status200(BaseItemDtoQueryResultModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: BaseItemDtoQueryResultModel? {
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
                case 200: self = try .status200(decoder.decode(BaseItemDtoQueryResultModel.self, from: data))
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
