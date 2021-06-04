//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Image {

    /** Delete the user's image. */
    public enum DeleteUserImageByIndex {

        public static let service = APIService<Response>(id: "DeleteUserImageByIndex", tag: "Image", method: "DELETE", path: "/Users/{userId}/Images/{imageType}/{index}", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** User Id. */
                public var userId: ID

                /** (Unused) Image type. */
                public var imageType: ImageType

                /** (Unused) Image index. */
                public var index: Int

                public init(userId: ID, imageType: ImageType, index: Int) {
                    self.userId = userId
                    self.imageType = imageType
                    self.index = index
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: DeleteUserImageByIndex.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(userId: ID, imageType: ImageType, index: Int) {
                let options = Options(userId: userId, imageType: imageType, index: index)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "userId" + "}", with: "\(self.options.userId.encode())").replacingOccurrences(of: "{" + "imageType" + "}", with: "\(self.options.imageType.encode())").replacingOccurrences(of: "{" + "index" + "}", with: "\(self.options.index)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Image deleted. */
            case status204

            /** Unauthorized */
            case status401

            /** User does not have permission to delete the image. */
            case status403(ProblemDetailsModel)

            public var success: Void? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var failure: ProblemDetailsModel? {
                switch self {
                case .status403(let response): return response
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
                case .status403(let response): return response
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
                case 403: self = try .status403(decoder.decode(ProblemDetailsModel.self, from: data))
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
