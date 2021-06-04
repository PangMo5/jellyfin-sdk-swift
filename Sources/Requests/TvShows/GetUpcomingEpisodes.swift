//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.TvShows {

    /** Gets a list of upcoming episodes. */
    public enum GetUpcomingEpisodes {

        public static let service = APIService<Response>(id: "GetUpcomingEpisodes", tag: "TvShows", method: "GET", path: "/Shows/Upcoming", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The user id of the user to get the upcoming episodes for. */
                public var userId: ID?

                /** Optional. The record index to start at. All items with a lower index will be dropped from the results. */
                public var startIndex: Int?

                /** Optional. The maximum number of records to return. */
                public var limit: Int?

                /** Optional. Specify additional fields of information to return in the output. */
                public var fields: [ItemFields]?

                /** Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. */
                public var parentId: ID?

                /** Optional. Include image information in output. */
                public var enableImges: Bool?

                /** Optional. The max number of images to return, per image type. */
                public var imageTypeLimit: Int?

                /** Optional. The image types to include in the output. */
                public var enableImageTypes: [ImageType]?

                /** Optional. Include user data. */
                public var enableUserData: Bool?

                public init(userId: ID? = nil, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, parentId: ID? = nil, enableImges: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil) {
                    self.userId = userId
                    self.startIndex = startIndex
                    self.limit = limit
                    self.fields = fields
                    self.parentId = parentId
                    self.enableImges = enableImges
                    self.imageTypeLimit = imageTypeLimit
                    self.enableImageTypes = enableImageTypes
                    self.enableUserData = enableUserData
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetUpcomingEpisodes.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(userId: ID? = nil, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, parentId: ID? = nil, enableImges: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil) {
                let options = Options(userId: userId, startIndex: startIndex, limit: limit, fields: fields, parentId: parentId, enableImges: enableImges, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, enableUserData: enableUserData)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let userId = options.userId?.encode() {
                  params["userId"] = userId
                }
                if let startIndex = options.startIndex {
                  params["startIndex"] = startIndex
                }
                if let limit = options.limit {
                  params["limit"] = limit
                }
                if let fields = options.fields?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields"] = fields
                }
                if let parentId = options.parentId?.encode() {
                  params["parentId"] = parentId
                }
                if let enableImges = options.enableImges {
                  params["enableImges"] = enableImges
                }
                if let imageTypeLimit = options.imageTypeLimit {
                  params["imageTypeLimit"] = imageTypeLimit
                }
                if let enableImageTypes = options.enableImageTypes?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["enableImageTypes"] = enableImageTypes
                }
                if let enableUserData = options.enableUserData {
                  params["enableUserData"] = enableUserData
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = BaseItemDtoQueryResultModel

            /** Success */
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