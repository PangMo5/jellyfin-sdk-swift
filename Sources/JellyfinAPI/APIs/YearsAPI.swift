//
// YearsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
#if canImport(Combine)
import Combine
#endif

open class YearsAPI {
    /**
     Gets a year.
     
     - parameter year: (path) The year. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<BaseItemDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getYear(year: Int, userId: String? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<BaseItemDto, Error> {
        return Future<BaseItemDto, Error>.init { promise in
            getYearWithRequestBuilder(year: year, userId: userId).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Gets a year.
     - GET /Years/{year}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter year: (path) The year. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getYearWithRequestBuilder(year: Int, userId: String? = nil) -> RequestBuilder<BaseItemDto> {
        var urlPath = "/Years/{year}"
        let yearPreEscape = "\(APIHelper.mapValueToPathItem(year))"
        let yearPostEscape = yearPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{year}", with: yearPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDto>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get years.
     
     - parameter startIndex: (query) Skips over a given number of items within the results. Use for paging. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter sortOrder: (query) Sort Order - Ascending,Descending. (optional)
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter excludeItemTypes: (query) Optional. If specified, results will be excluded based on item type. This allows multiple, comma delimited. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be included based on item type. This allows multiple, comma delimited. (optional)
     - parameter mediaTypes: (query) Optional. Filter by MediaType. Allows multiple, comma delimited. (optional)
     - parameter sortBy: (query) Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter userId: (query) User Id. (optional)
     - parameter recursive: (query) Search recursively. (optional, default to true)
     - parameter enableImages: (query) Optional. Include image information in output. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getYears(startIndex: Int? = nil, limit: Int? = nil, sortOrder: [APISortOrder]? = nil, parentId: String? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, mediaTypes: [String]? = nil, sortBy: [String]? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: String? = nil, recursive: Bool? = nil, enableImages: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        return Future<BaseItemDtoQueryResult, Error>.init { promise in
            getYearsWithRequestBuilder(startIndex: startIndex, limit: limit, sortOrder: sortOrder, parentId: parentId, fields: fields, excludeItemTypes: excludeItemTypes, includeItemTypes: includeItemTypes, mediaTypes: mediaTypes, sortBy: sortBy, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, userId: userId, recursive: recursive, enableImages: enableImages).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Get years.
     - GET /Years
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter startIndex: (query) Skips over a given number of items within the results. Use for paging. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter sortOrder: (query) Sort Order - Ascending,Descending. (optional)
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter excludeItemTypes: (query) Optional. If specified, results will be excluded based on item type. This allows multiple, comma delimited. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be included based on item type. This allows multiple, comma delimited. (optional)
     - parameter mediaTypes: (query) Optional. Filter by MediaType. Allows multiple, comma delimited. (optional)
     - parameter sortBy: (query) Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter userId: (query) User Id. (optional)
     - parameter recursive: (query) Search recursively. (optional, default to true)
     - parameter enableImages: (query) Optional. Include image information in output. (optional, default to true)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getYearsWithRequestBuilder(startIndex: Int? = nil, limit: Int? = nil, sortOrder: [APISortOrder]? = nil, parentId: String? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, mediaTypes: [String]? = nil, sortBy: [String]? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: String? = nil, recursive: Bool? = nil, enableImages: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let urlPath = "/Years"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sortOrder": sortOrder?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "excludeItemTypes": excludeItemTypes?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "mediaTypes": mediaTypes?.encodeToJSON(),
            "sortBy": sortBy?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "recursive": recursive?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
