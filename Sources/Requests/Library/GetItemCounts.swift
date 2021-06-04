//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Library {

    /** Get item counts. */
    public enum GetItemCounts {

        public static let service = APIService<Response>(id: "GetItemCounts", tag: "Library", method: "GET", path: "/Items/Counts", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Optional. Get counts from a specific user's library. */
                public var userId: ID?

                /** Optional. Get counts of favorite items. */
                public var isFavorite: Bool?

                public init(userId: ID? = nil, isFavorite: Bool? = nil) {
                    self.userId = userId
                    self.isFavorite = isFavorite
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetItemCounts.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(userId: ID? = nil, isFavorite: Bool? = nil) {
                let options = Options(userId: userId, isFavorite: isFavorite)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let userId = options.userId?.encode() {
                  params["userId"] = userId
                }
                if let isFavorite = options.isFavorite {
                  params["isFavorite"] = isFavorite
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = ItemCountsModel

            /** Item counts returned. */
            case status200(ItemCountsModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: ItemCountsModel? {
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
                case 200: self = try .status200(decoder.decode(ItemCountsModel.self, from: data))
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