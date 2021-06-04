//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Dlna {

    /** Updates a profile. */
    public enum UpdateProfile {

        public static let service = APIService<Response>(id: "UpdateProfile", tag: "Dlna", method: "POST", path: "/Dlna/Profiles/{profileId}", hasBody: true, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["RequiresElevation"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Profile id. */
                public var profileId: String

                public init(profileId: String) {
                    self.profileId = profileId
                }
            }

            public var options: Options

            public var body: DeviceProfileModel?

            public init(body: DeviceProfileModel?, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: UpdateProfile.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(profileId: String, body: DeviceProfileModel? = nil) {
                let options = Options(profileId: profileId)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "profileId" + "}", with: "\(self.options.profileId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Device profile updated. */
            case status204

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            /** Device profile not found. */
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
