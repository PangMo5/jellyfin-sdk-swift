//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Years {

    /** Get years. */
    public enum GetYears {

        public static let service = APIService<Response>(id: "GetYears", tag: "Years", method: "GET", path: "/Years", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Skips over a given number of items within the results. Use for paging. */
                public var startIndex: Int?

                /** Optional. The maximum number of records to return. */
                public var limit: Int?

                /** Sort Order - Ascending,Descending. */
                public var sortOrder: [SortOrder]?

                /** Specify this to localize the search to a specific item or folder. Omit to use the root. */
                public var parentId: ID?

                /** Optional. Specify additional fields of information to return in the output. */
                public var fields: [ItemFields]?

                /** Optional. If specified, results will be excluded based on item type. This allows multiple, comma delimited. */
                public var excludeItemTypes: [String]?

                /** Optional. If specified, results will be included based on item type. This allows multiple, comma delimited. */
                public var includeItemTypes: [String]?

                /** Optional. Filter by MediaType. Allows multiple, comma delimited. */
                public var mediaTypes: [String]?

                /** Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. */
                public var sortBy: [String]?

                /** Optional. Include user data. */
                public var enableUserData: Bool?

                /** Optional. The max number of images to return, per image type. */
                public var imageTypeLimit: Int?

                /** Optional. The image types to include in the output. */
                public var enableImageTypes: [ImageType]?

                /** User Id. */
                public var userId: ID?

                /** Search recursively. */
                public var recursive: Bool?

                /** Optional. Include image information in output. */
                public var enableImages: Bool?

                public init(startIndex: Int? = nil, limit: Int? = nil, sortOrder: [SortOrder]? = nil, parentId: ID? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, mediaTypes: [String]? = nil, sortBy: [String]? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: ID? = nil, recursive: Bool? = nil, enableImages: Bool? = nil) {
                    self.startIndex = startIndex
                    self.limit = limit
                    self.sortOrder = sortOrder
                    self.parentId = parentId
                    self.fields = fields
                    self.excludeItemTypes = excludeItemTypes
                    self.includeItemTypes = includeItemTypes
                    self.mediaTypes = mediaTypes
                    self.sortBy = sortBy
                    self.enableUserData = enableUserData
                    self.imageTypeLimit = imageTypeLimit
                    self.enableImageTypes = enableImageTypes
                    self.userId = userId
                    self.recursive = recursive
                    self.enableImages = enableImages
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetYears.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(startIndex: Int? = nil, limit: Int? = nil, sortOrder: [SortOrder]? = nil, parentId: ID? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, mediaTypes: [String]? = nil, sortBy: [String]? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: ID? = nil, recursive: Bool? = nil, enableImages: Bool? = nil) {
                let options = Options(startIndex: startIndex, limit: limit, sortOrder: sortOrder, parentId: parentId, fields: fields, excludeItemTypes: excludeItemTypes, includeItemTypes: includeItemTypes, mediaTypes: mediaTypes, sortBy: sortBy, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, userId: userId, recursive: recursive, enableImages: enableImages)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let startIndex = options.startIndex {
                  params["startIndex"] = startIndex
                }
                if let limit = options.limit {
                  params["limit"] = limit
                }
                if let sortOrder = options.sortOrder?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["sortOrder"] = sortOrder
                }
                if let parentId = options.parentId?.encode() {
                  params["parentId"] = parentId
                }
                if let fields = options.fields?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields"] = fields
                }
                if let excludeItemTypes = options.excludeItemTypes?.joined(separator: ",") {
                  params["excludeItemTypes"] = excludeItemTypes
                }
                if let includeItemTypes = options.includeItemTypes?.joined(separator: ",") {
                  params["includeItemTypes"] = includeItemTypes
                }
                if let mediaTypes = options.mediaTypes?.joined(separator: ",") {
                  params["mediaTypes"] = mediaTypes
                }
                if let sortBy = options.sortBy?.joined(separator: ",") {
                  params["sortBy"] = sortBy
                }
                if let enableUserData = options.enableUserData {
                  params["enableUserData"] = enableUserData
                }
                if let imageTypeLimit = options.imageTypeLimit {
                  params["imageTypeLimit"] = imageTypeLimit
                }
                if let enableImageTypes = options.enableImageTypes?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["enableImageTypes"] = enableImageTypes
                }
                if let userId = options.userId?.encode() {
                  params["userId"] = userId
                }
                if let recursive = options.recursive {
                  params["recursive"] = recursive
                }
                if let enableImages = options.enableImages {
                  params["enableImages"] = enableImages
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = BaseItemDtoQueryResultModel

            /** Year query returned. */
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
