//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.HlsSegment {

    /** Gets the specified audio segment for an audio item. */
    public enum GetHlsAudioSegmentLegacyMp3 {

        public static let service = APIService<Response>(id: "GetHlsAudioSegmentLegacyMp3", tag: "HlsSegment", method: "GET", path: "/Audio/{itemId}/hls/{segmentId}/stream.mp3", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The item id. */
                public var itemId: String

                /** The segment id. */
                public var segmentId: String

                public init(itemId: String, segmentId: String) {
                    self.itemId = itemId
                    self.segmentId = segmentId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetHlsAudioSegmentLegacyMp3.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(itemId: String, segmentId: String) {
                let options = Options(itemId: itemId, segmentId: segmentId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId)").replacingOccurrences(of: "{" + "segmentId" + "}", with: "\(self.options.segmentId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = File

            /** Hls audio segment returned. */
            case status200(File)

            public var success: File? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(data)
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
