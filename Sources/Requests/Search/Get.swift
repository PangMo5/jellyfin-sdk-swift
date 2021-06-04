//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.Search {

    /** Gets the search hint result. */
    public enum Get {

        public static let service = APIService<Response>(id: "Get", tag: "Search", method: "GET", path: "/Search/Hints", hasBody: false, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["DefaultAuthorization"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Optional. The record index to start at. All items with a lower index will be dropped from the results. */
                public var startIndex: Int?

                /** Optional. The maximum number of records to return. */
                public var limit: Int?

                /** Optional. Supply a user id to search within a user's library or omit to search all. */
                public var userId: ID?

                /** The search term to filter on. */
                public var searchTerm: String

                /** If specified, only results with the specified item types are returned. This allows multiple, comma delimeted. */
                public var includeItemTypes: [String]?

                /** If specified, results with these item types are filtered out. This allows multiple, comma delimeted. */
                public var excludeItemTypes: [String]?

                /** If specified, only results with the specified media types are returned. This allows multiple, comma delimeted. */
                public var mediaTypes: [String]?

                /** If specified, only children of the parent are returned. */
                public var parentId: ID?

                /** Optional filter for movies. */
                public var isMovie: Bool?

                /** Optional filter for series. */
                public var isSeries: Bool?

                /** Optional filter for news. */
                public var isNews: Bool?

                /** Optional filter for kids. */
                public var isKids: Bool?

                /** Optional filter for sports. */
                public var isSports: Bool?

                /** Optional filter whether to include people. */
                public var includePeople: Bool?

                /** Optional filter whether to include media. */
                public var includeMedia: Bool?

                /** Optional filter whether to include genres. */
                public var includeGenres: Bool?

                /** Optional filter whether to include studios. */
                public var includeStudios: Bool?

                /** Optional filter whether to include artists. */
                public var includeArtists: Bool?

                public init(startIndex: Int? = nil, limit: Int? = nil, userId: ID? = nil, searchTerm: String, includeItemTypes: [String]? = nil, excludeItemTypes: [String]? = nil, mediaTypes: [String]? = nil, parentId: ID? = nil, isMovie: Bool? = nil, isSeries: Bool? = nil, isNews: Bool? = nil, isKids: Bool? = nil, isSports: Bool? = nil, includePeople: Bool? = nil, includeMedia: Bool? = nil, includeGenres: Bool? = nil, includeStudios: Bool? = nil, includeArtists: Bool? = nil) {
                    self.startIndex = startIndex
                    self.limit = limit
                    self.userId = userId
                    self.searchTerm = searchTerm
                    self.includeItemTypes = includeItemTypes
                    self.excludeItemTypes = excludeItemTypes
                    self.mediaTypes = mediaTypes
                    self.parentId = parentId
                    self.isMovie = isMovie
                    self.isSeries = isSeries
                    self.isNews = isNews
                    self.isKids = isKids
                    self.isSports = isSports
                    self.includePeople = includePeople
                    self.includeMedia = includeMedia
                    self.includeGenres = includeGenres
                    self.includeStudios = includeStudios
                    self.includeArtists = includeArtists
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: Get.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(startIndex: Int? = nil, limit: Int? = nil, userId: ID? = nil, searchTerm: String, includeItemTypes: [String]? = nil, excludeItemTypes: [String]? = nil, mediaTypes: [String]? = nil, parentId: ID? = nil, isMovie: Bool? = nil, isSeries: Bool? = nil, isNews: Bool? = nil, isKids: Bool? = nil, isSports: Bool? = nil, includePeople: Bool? = nil, includeMedia: Bool? = nil, includeGenres: Bool? = nil, includeStudios: Bool? = nil, includeArtists: Bool? = nil) {
                let options = Options(startIndex: startIndex, limit: limit, userId: userId, searchTerm: searchTerm, includeItemTypes: includeItemTypes, excludeItemTypes: excludeItemTypes, mediaTypes: mediaTypes, parentId: parentId, isMovie: isMovie, isSeries: isSeries, isNews: isNews, isKids: isKids, isSports: isSports, includePeople: includePeople, includeMedia: includeMedia, includeGenres: includeGenres, includeStudios: includeStudios, includeArtists: includeArtists)
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
                if let userId = options.userId?.encode() {
                  params["userId"] = userId
                }
                params["searchTerm"] = options.searchTerm
                if let includeItemTypes = options.includeItemTypes?.joined(separator: ",") {
                  params["includeItemTypes"] = includeItemTypes
                }
                if let excludeItemTypes = options.excludeItemTypes?.joined(separator: ",") {
                  params["excludeItemTypes"] = excludeItemTypes
                }
                if let mediaTypes = options.mediaTypes?.joined(separator: ",") {
                  params["mediaTypes"] = mediaTypes
                }
                if let parentId = options.parentId?.encode() {
                  params["parentId"] = parentId
                }
                if let isMovie = options.isMovie {
                  params["isMovie"] = isMovie
                }
                if let isSeries = options.isSeries {
                  params["isSeries"] = isSeries
                }
                if let isNews = options.isNews {
                  params["isNews"] = isNews
                }
                if let isKids = options.isKids {
                  params["isKids"] = isKids
                }
                if let isSports = options.isSports {
                  params["isSports"] = isSports
                }
                if let includePeople = options.includePeople {
                  params["includePeople"] = includePeople
                }
                if let includeMedia = options.includeMedia {
                  params["includeMedia"] = includeMedia
                }
                if let includeGenres = options.includeGenres {
                  params["includeGenres"] = includeGenres
                }
                if let includeStudios = options.includeStudios {
                  params["includeStudios"] = includeStudios
                }
                if let includeArtists = options.includeArtists {
                  params["includeArtists"] = includeArtists
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = SearchHintResultModel

            /** Search hint returned. */
            case status200(SearchHintResultModel)

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: SearchHintResultModel? {
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
                case 200: self = try .status200(decoder.decode(SearchHintResultModel.self, from: data))
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
