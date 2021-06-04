//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.InstantMix {

    /** Creates an instant playlist based on a given song. */
    public enum GetInstantMixFromSong {

        public static let service = APIService<Response>(id: "GetInstantMixFromSong", tag: "InstantMix", method: "GET", path: "/Songs/{id}/InstantMix", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The item id. */
                public var id: ID

                /** Optional. Filter by user id, and attach user data. */
                public var userId: ID?

                /** Optional. The maximum number of records to return. */
                public var limit: Int?

                /** Optional. Specify additional fields of information to return in the output. */
                public var fields: [ItemFields]?

                /** Optional. Include image information in output. */
                public var enableImages: Bool?

                /** Optional. Include user data. */
                public var enableUserData: Bool?

                /** Optional. The max number of images to return, per image type. */
                public var imageTypeLimit: Int?

                /** Optional. The image types to include in the output. */
                public var enableImageTypes: [ImageType]?

                public init(id: ID, userId: ID? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) {
                    self.id = id
                    self.userId = userId
                    self.limit = limit
                    self.fields = fields
                    self.enableImages = enableImages
                    self.enableUserData = enableUserData
                    self.imageTypeLimit = imageTypeLimit
                    self.enableImageTypes = enableImageTypes
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetInstantMixFromSong.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: ID, userId: ID? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) {
                let options = Options(id: id, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id.encode())")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let userId = options.userId?.encode() {
                  params["userId"] = userId
                }
                if let limit = options.limit {
                  params["limit"] = limit
                }
                if let fields = options.fields?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields"] = fields
                }
                if let enableImages = options.enableImages {
                  params["enableImages"] = enableImages
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
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = BaseItemDtoQueryResultModel

            /** Instant playlist returned. */
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
