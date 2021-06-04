//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Genres {

    /** Gets a genre, by name. */
    public enum GetGenre {

        public static let service = APIService<Response>(id: "GetGenre", tag: "Genres", method: "GET", path: "/Genres/{genreName}", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The genre name. */
                public var genreName: String

                /** The user id. */
                public var userId: ID?

                public init(genreName: String, userId: ID? = nil) {
                    self.genreName = genreName
                    self.userId = userId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetGenre.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(genreName: String, userId: ID? = nil) {
                let options = Options(genreName: genreName, userId: userId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "genreName" + "}", with: "\(self.options.genreName)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let userId = options.userId?.encode() {
                  params["userId"] = userId
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = BaseItemDtoModel

            /** Genres returned. */
            case status200(BaseItemDtoModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: BaseItemDtoModel? {
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
                case 200: self = try .status200(decoder.decode(BaseItemDtoModel.self, from: data))
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