//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.ScheduledTasks {

    /** Get task by id. */
    public enum GetTask {

        public static let service = APIService<Response>(id: "GetTask", tag: "ScheduledTasks", method: "GET", path: "/ScheduledTasks/{taskId}", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["RequiresElevation"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Task Id. */
                public var taskId: String

                public init(taskId: String) {
                    self.taskId = taskId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetTask.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(taskId: String) {
                let options = Options(taskId: taskId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "taskId" + "}", with: "\(self.options.taskId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = TaskInfoModel

            /** Task retrieved. */
            case status200(TaskInfoModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            /** Task not found. */
            case status404(ProblemDetailsModel)

            public var success: TaskInfoModel? {
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
            public var responseResult: APIResponseResult<TaskInfoModel, ProblemDetailsModel> {
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
                case 200: self = try .status200(decoder.decode(TaskInfoModel.self, from: data))
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