//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.DlnaServer {

    /** Gets Dlna content directory xml. */
    public enum GetContentDirectory2 {

        public static let service = APIService<Response>(id: "GetContentDirectory_2", tag: "DlnaServer", method: "GET", path: "/Dlna/{serverId}/ContentDirectory/ContentDirectory", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Server UUID. */
                public var serverId: String

                public init(serverId: String) {
                    self.serverId = serverId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetContentDirectory2.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(serverId: String) {
                let options = Options(serverId: serverId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "serverId" + "}", with: "\(self.options.serverId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = File

            /** Dlna content directory returned. */
            case status200(File)

            /** DLNA is disabled. */
            case status503

            public var success: File? {
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
                case .status503: return 503
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status503: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(data)
                case 503: self = .status503
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
