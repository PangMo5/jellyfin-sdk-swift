//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Image {

    /** Get studio image by name. */
    public enum GetStudioImage {

        public static let service = APIService<Response>(id: "GetStudioImage", tag: "Image", method: "GET", path: "/Studios/{name}/Images/{imageType}", hasBody: false, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Studio name. */
                public var name: String

                /** Image type. */
                public var imageType: ImageType

                /** Optional. Supply the cache tag from the item object to receive strong caching headers. */
                public var tag: String?

                /** Determines the output format of the image - original,gif,jpg,png. */
                public var format: ImageFormat?

                /** The maximum image width to return. */
                public var maxWidth: Int?

                /** The maximum image height to return. */
                public var maxHeight: Int?

                /** Optional. Percent to render for the percent played overlay. */
                public var percentPlayed: Double?

                /** Optional. Unplayed count overlay to render. */
                public var unplayedCount: Int?

                /** The fixed image width to return. */
                public var width: Int?

                /** The fixed image height to return. */
                public var height: Int?

                /** Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases. */
                public var quality: Int?

                /** Width of box to fill. */
                public var fillWidth: Int?

                /** Height of box to fill. */
                public var fillHeight: Int?

                /** Optional. Specify if whitespace should be cropped out of the image. True/False. If unspecified, whitespace will be cropped from logos and clear art. */
                public var cropWhitespace: Bool?

                /** Optional. Add a played indicator. */
                public var addPlayedIndicator: Bool?

                /** Optional. Blur image. */
                public var blur: Int?

                /** Optional. Apply a background color for transparent images. */
                public var backgroundColor: String?

                /** Optional. Apply a foreground layer on top of the image. */
                public var foregroundLayer: String?

                /** Image index. */
                public var imageIndex: Int?

                public init(name: String, imageType: ImageType, tag: String? = nil, format: ImageFormat? = nil, maxWidth: Int? = nil, maxHeight: Int? = nil, percentPlayed: Double? = nil, unplayedCount: Int? = nil, width: Int? = nil, height: Int? = nil, quality: Int? = nil, fillWidth: Int? = nil, fillHeight: Int? = nil, cropWhitespace: Bool? = nil, addPlayedIndicator: Bool? = nil, blur: Int? = nil, backgroundColor: String? = nil, foregroundLayer: String? = nil, imageIndex: Int? = nil) {
                    self.name = name
                    self.imageType = imageType
                    self.tag = tag
                    self.format = format
                    self.maxWidth = maxWidth
                    self.maxHeight = maxHeight
                    self.percentPlayed = percentPlayed
                    self.unplayedCount = unplayedCount
                    self.width = width
                    self.height = height
                    self.quality = quality
                    self.fillWidth = fillWidth
                    self.fillHeight = fillHeight
                    self.cropWhitespace = cropWhitespace
                    self.addPlayedIndicator = addPlayedIndicator
                    self.blur = blur
                    self.backgroundColor = backgroundColor
                    self.foregroundLayer = foregroundLayer
                    self.imageIndex = imageIndex
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetStudioImage.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(name: String, imageType: ImageType, tag: String? = nil, format: ImageFormat? = nil, maxWidth: Int? = nil, maxHeight: Int? = nil, percentPlayed: Double? = nil, unplayedCount: Int? = nil, width: Int? = nil, height: Int? = nil, quality: Int? = nil, fillWidth: Int? = nil, fillHeight: Int? = nil, cropWhitespace: Bool? = nil, addPlayedIndicator: Bool? = nil, blur: Int? = nil, backgroundColor: String? = nil, foregroundLayer: String? = nil, imageIndex: Int? = nil) {
                let options = Options(name: name, imageType: imageType, tag: tag, format: format, maxWidth: maxWidth, maxHeight: maxHeight, percentPlayed: percentPlayed, unplayedCount: unplayedCount, width: width, height: height, quality: quality, fillWidth: fillWidth, fillHeight: fillHeight, cropWhitespace: cropWhitespace, addPlayedIndicator: addPlayedIndicator, blur: blur, backgroundColor: backgroundColor, foregroundLayer: foregroundLayer, imageIndex: imageIndex)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "name" + "}", with: "\(self.options.name)").replacingOccurrences(of: "{" + "imageType" + "}", with: "\(self.options.imageType.encode())")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let tag = options.tag {
                  params["tag"] = tag
                }
                if let format = options.format?.encode() {
                  params["format"] = format
                }
                if let maxWidth = options.maxWidth {
                  params["maxWidth"] = maxWidth
                }
                if let maxHeight = options.maxHeight {
                  params["maxHeight"] = maxHeight
                }
                if let percentPlayed = options.percentPlayed {
                  params["percentPlayed"] = percentPlayed
                }
                if let unplayedCount = options.unplayedCount {
                  params["unplayedCount"] = unplayedCount
                }
                if let width = options.width {
                  params["width"] = width
                }
                if let height = options.height {
                  params["height"] = height
                }
                if let quality = options.quality {
                  params["quality"] = quality
                }
                if let fillWidth = options.fillWidth {
                  params["fillWidth"] = fillWidth
                }
                if let fillHeight = options.fillHeight {
                  params["fillHeight"] = fillHeight
                }
                if let cropWhitespace = options.cropWhitespace {
                  params["cropWhitespace"] = cropWhitespace
                }
                if let addPlayedIndicator = options.addPlayedIndicator {
                  params["addPlayedIndicator"] = addPlayedIndicator
                }
                if let blur = options.blur {
                  params["blur"] = blur
                }
                if let backgroundColor = options.backgroundColor {
                  params["backgroundColor"] = backgroundColor
                }
                if let foregroundLayer = options.foregroundLayer {
                  params["foregroundLayer"] = foregroundLayer
                }
                if let imageIndex = options.imageIndex {
                  params["imageIndex"] = imageIndex
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = File

            /** Image stream returned. */
            case status200(File)

            /** Item not found. */
            case status404(ProblemDetailsModel)

            public var success: File? {
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
            public var responseResult: APIResponseResult<File, ProblemDetailsModel> {
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
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(data)
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
