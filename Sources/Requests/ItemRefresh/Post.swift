//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.ItemRefresh {

    /** Refreshes metadata for an item. */
    public enum Post {

        public static let service = APIService<Response>(id: "Post", tag: "ItemRefresh", method: "POST", path: "/Items/{itemId}/Refresh", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Item id. */
                public var itemId: ID

                /** (Optional) Specifies the metadata refresh mode. */
                public var metadataRefreshMode: MetadataRefreshMode?

                /** (Optional) Specifies the image refresh mode. */
                public var imageRefreshMode: MetadataRefreshMode?

                /** (Optional) Determines if metadata should be replaced. Only applicable if mode is FullRefresh. */
                public var replaceAllMetadata: Bool?

                /** (Optional) Determines if images should be replaced. Only applicable if mode is FullRefresh. */
                public var replaceAllImages: Bool?

                public init(itemId: ID, metadataRefreshMode: MetadataRefreshMode? = nil, imageRefreshMode: MetadataRefreshMode? = nil, replaceAllMetadata: Bool? = nil, replaceAllImages: Bool? = nil) {
                    self.itemId = itemId
                    self.metadataRefreshMode = metadataRefreshMode
                    self.imageRefreshMode = imageRefreshMode
                    self.replaceAllMetadata = replaceAllMetadata
                    self.replaceAllImages = replaceAllImages
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: Post.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(itemId: ID, metadataRefreshMode: MetadataRefreshMode? = nil, imageRefreshMode: MetadataRefreshMode? = nil, replaceAllMetadata: Bool? = nil, replaceAllImages: Bool? = nil) {
                let options = Options(itemId: itemId, metadataRefreshMode: metadataRefreshMode, imageRefreshMode: imageRefreshMode, replaceAllMetadata: replaceAllMetadata, replaceAllImages: replaceAllImages)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId.encode())")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let metadataRefreshMode = options.metadataRefreshMode?.encode() {
                  params["metadataRefreshMode"] = metadataRefreshMode
                }
                if let imageRefreshMode = options.imageRefreshMode?.encode() {
                  params["imageRefreshMode"] = imageRefreshMode
                }
                if let replaceAllMetadata = options.replaceAllMetadata {
                  params["replaceAllMetadata"] = replaceAllMetadata
                }
                if let replaceAllImages = options.replaceAllImages {
                  params["replaceAllImages"] = replaceAllImages
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Item metadata refresh queued. */
            case status204

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            /** Item to refresh not found. */
            case status404(ProblemDetailsModel)

            public var success: Void? {
                switch self {
                case .status204: return ()
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
            public var responseResult: APIResponseResult<Void, ProblemDetailsModel> {
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
                case .status404(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status401: return 401
                case .status403: return 403
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status401: return false
                case .status403: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
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
