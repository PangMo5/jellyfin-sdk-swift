//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Subtitle {

    /** Gets subtitles in a specified format. */
    public enum GetSubtitleWithTicks {

        public static let service = APIService<Response>(id: "GetSubtitleWithTicks", tag: "Subtitle", method: "GET", path: "/Videos/{routeItemId}/{routeMediaSourceId}/Subtitles/{routeIndex}/{routeStartPositionTicks}/Stream.{routeFormat}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The (route) item id. */
                public var routeItemId: ID

                /** The (route) media source id. */
                public var routeMediaSourceId: String

                /** The (route) subtitle stream index. */
                public var routeIndex: Int

                /** The (route) start position of the subtitle in ticks. */
                public var routeStartPositionTicks: Int

                /** The (route) format of the returned subtitle. */
                public var routeFormat: String

                /** The item id. */
                public var itemId: ID?

                /** The media source id. */
                public var mediaSourceId: String?

                /** The subtitle stream index. */
                public var index: Int?

                /** The start position of the subtitle in ticks. */
                public var startPositionTicks: Int?

                /** The format of the returned subtitle. */
                public var format: String?

                /** Optional. The end position of the subtitle in ticks. */
                public var endPositionTicks: Int?

                /** Optional. Whether to copy the timestamps. */
                public var copyTimestamps: Bool?

                /** Optional. Whether to add a VTT time map. */
                public var addVttTimeMap: Bool?

                public init(routeItemId: ID, routeMediaSourceId: String, routeIndex: Int, routeStartPositionTicks: Int, routeFormat: String, itemId: ID? = nil, mediaSourceId: String? = nil, index: Int? = nil, startPositionTicks: Int? = nil, format: String? = nil, endPositionTicks: Int? = nil, copyTimestamps: Bool? = nil, addVttTimeMap: Bool? = nil) {
                    self.routeItemId = routeItemId
                    self.routeMediaSourceId = routeMediaSourceId
                    self.routeIndex = routeIndex
                    self.routeStartPositionTicks = routeStartPositionTicks
                    self.routeFormat = routeFormat
                    self.itemId = itemId
                    self.mediaSourceId = mediaSourceId
                    self.index = index
                    self.startPositionTicks = startPositionTicks
                    self.format = format
                    self.endPositionTicks = endPositionTicks
                    self.copyTimestamps = copyTimestamps
                    self.addVttTimeMap = addVttTimeMap
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetSubtitleWithTicks.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(routeItemId: ID, routeMediaSourceId: String, routeIndex: Int, routeStartPositionTicks: Int, routeFormat: String, itemId: ID? = nil, mediaSourceId: String? = nil, index: Int? = nil, startPositionTicks: Int? = nil, format: String? = nil, endPositionTicks: Int? = nil, copyTimestamps: Bool? = nil, addVttTimeMap: Bool? = nil) {
                let options = Options(routeItemId: routeItemId, routeMediaSourceId: routeMediaSourceId, routeIndex: routeIndex, routeStartPositionTicks: routeStartPositionTicks, routeFormat: routeFormat, itemId: itemId, mediaSourceId: mediaSourceId, index: index, startPositionTicks: startPositionTicks, format: format, endPositionTicks: endPositionTicks, copyTimestamps: copyTimestamps, addVttTimeMap: addVttTimeMap)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "routeItemId" + "}", with: "\(self.options.routeItemId.encode())").replacingOccurrences(of: "{" + "routeMediaSourceId" + "}", with: "\(self.options.routeMediaSourceId)").replacingOccurrences(of: "{" + "routeIndex" + "}", with: "\(self.options.routeIndex)").replacingOccurrences(of: "{" + "routeStartPositionTicks" + "}", with: "\(self.options.routeStartPositionTicks)").replacingOccurrences(of: "{" + "routeFormat" + "}", with: "\(self.options.routeFormat)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let itemId = options.itemId?.encode() {
                  params["itemId"] = itemId
                }
                if let mediaSourceId = options.mediaSourceId {
                  params["mediaSourceId"] = mediaSourceId
                }
                if let index = options.index {
                  params["index"] = index
                }
                if let startPositionTicks = options.startPositionTicks {
                  params["startPositionTicks"] = startPositionTicks
                }
                if let format = options.format {
                  params["format"] = format
                }
                if let endPositionTicks = options.endPositionTicks {
                  params["endPositionTicks"] = endPositionTicks
                }
                if let copyTimestamps = options.copyTimestamps {
                  params["copyTimestamps"] = copyTimestamps
                }
                if let addVttTimeMap = options.addVttTimeMap {
                  params["addVttTimeMap"] = addVttTimeMap
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = File

            /** File returned. */
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
