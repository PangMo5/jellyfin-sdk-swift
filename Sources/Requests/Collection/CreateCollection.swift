//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Collection {

    /** Creates a new collection. */
    public enum CreateCollection {

        public static let service = APIService<Response>(id: "CreateCollection", tag: "Collection", method: "POST", path: "/Collections", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name of the collection. */
                public var name: String?

                /** Item Ids to add to the collection. */
                public var ids: [String]?

                /** Optional. Create the collection within a specific folder. */
                public var parentId: ID?

                /** Whether or not to lock the new collection. */
                public var isLocked: Bool?

                public init(name: String? = nil, ids: [String]? = nil, parentId: ID? = nil, isLocked: Bool? = nil) {
                    self.name = name
                    self.ids = ids
                    self.parentId = parentId
                    self.isLocked = isLocked
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: CreateCollection.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(name: String? = nil, ids: [String]? = nil, parentId: ID? = nil, isLocked: Bool? = nil) {
                let options = Options(name: name, ids: ids, parentId: parentId, isLocked: isLocked)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let name = options.name {
                  params["name"] = name
                }
                if let ids = options.ids?.joined(separator: ",") {
                  params["ids"] = ids
                }
                if let parentId = options.parentId?.encode() {
                  params["parentId"] = parentId
                }
                if let isLocked = options.isLocked {
                  params["isLocked"] = isLocked
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = CollectionCreationResultModel

            /** Collection created. */
            case status200(CollectionCreationResultModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: CollectionCreationResultModel? {
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
                case 200: self = try .status200(decoder.decode(CollectionCreationResultModel.self, from: data))
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
