//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Persons {

    /** Get person by name. */
    public enum GetPerson {

        public static let service = APIService<Response>(id: "GetPerson", tag: "Persons", method: "GET", path: "/Persons/{name}", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Person name. */
                public var name: String

                /** Optional. Filter by user id, and attach user data. */
                public var userId: ID?

                public init(name: String, userId: ID? = nil) {
                    self.name = name
                    self.userId = userId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetPerson.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(name: String, userId: ID? = nil) {
                let options = Options(name: name, userId: userId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "name" + "}", with: "\(self.options.name)")
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

            /** Person returned. */
            case status200(BaseItemDtoModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            /** Person not found. */
            case status404(ProblemDetailsModel)

            public var success: BaseItemDtoModel? {
                switch self {
                case .status200(let response): return response
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
            public var responseResult: APIResponseResult<BaseItemDtoModel, ProblemDetailsModel> {
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
                case .status200(let response): return response
                case .status404(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status401: return 401
                case .status403: return 403
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status401: return false
                case .status403: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(BaseItemDtoModel.self, from: data))
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