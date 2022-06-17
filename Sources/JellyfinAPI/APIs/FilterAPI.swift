//
// FilterAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FilterAPI {

    /**
     Gets query filters.
     
     - parameter userId: (query) Optional. User id. (optional)
     - parameter parentId: (query) Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isAiring: (query) Optional. Is item airing. (optional)
     - parameter isMovie: (query) Optional. Is item movie. (optional)
     - parameter isSports: (query) Optional. Is item sports. (optional)
     - parameter isKids: (query) Optional. Is item kids. (optional)
     - parameter isNews: (query) Optional. Is item news. (optional)
     - parameter isSeries: (query) Optional. Is item series. (optional)
     - parameter recursive: (query) Optional. Search recursive. (optional)
     - returns: AnyPublisher<QueryFilters, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getQueryFilters(userId: String? = nil, parentId: String? = nil, includeItemTypes: [BaseItemKind]? = nil, isAiring: Bool? = nil, isMovie: Bool? = nil, isSports: Bool? = nil, isKids: Bool? = nil, isNews: Bool? = nil, isSeries: Bool? = nil, recursive: Bool? = nil) -> AnyPublisher<QueryFilters, Error> {
        var requestTask: RequestTask?
        return Future<QueryFilters, Error> { promise in
            requestTask = getQueryFiltersWithRequestBuilder(userId: userId, parentId: parentId, includeItemTypes: includeItemTypes, isAiring: isAiring, isMovie: isMovie, isSports: isSports, isKids: isKids, isNews: isNews, isSeries: isSeries, recursive: recursive).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Gets query filters.
     - GET /Items/Filters2
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (query) Optional. User id. (optional)
     - parameter parentId: (query) Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isAiring: (query) Optional. Is item airing. (optional)
     - parameter isMovie: (query) Optional. Is item movie. (optional)
     - parameter isSports: (query) Optional. Is item sports. (optional)
     - parameter isKids: (query) Optional. Is item kids. (optional)
     - parameter isNews: (query) Optional. Is item news. (optional)
     - parameter isSeries: (query) Optional. Is item series. (optional)
     - parameter recursive: (query) Optional. Search recursive. (optional)
     - returns: RequestBuilder<QueryFilters> 
     */
    open class func getQueryFiltersWithRequestBuilder(userId: String? = nil, parentId: String? = nil, includeItemTypes: [BaseItemKind]? = nil, isAiring: Bool? = nil, isMovie: Bool? = nil, isSports: Bool? = nil, isKids: Bool? = nil, isNews: Bool? = nil, isSeries: Bool? = nil, recursive: Bool? = nil) -> RequestBuilder<QueryFilters> {
        let localVariablePath = "/Items/Filters2"
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "isAiring": isAiring?.encodeToJSON(),
            "isMovie": isMovie?.encodeToJSON(),
            "isSports": isSports?.encodeToJSON(),
            "isKids": isKids?.encodeToJSON(),
            "isNews": isNews?.encodeToJSON(),
            "isSeries": isSeries?.encodeToJSON(),
            "recursive": recursive?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<QueryFilters>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets legacy query filters.
     
     - parameter userId: (query) Optional. User id. (optional)
     - parameter parentId: (query) Optional. Parent id. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter mediaTypes: (query) Optional. Filter by MediaType. Allows multiple, comma delimited. (optional)
     - returns: AnyPublisher<QueryFiltersLegacy, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getQueryFiltersLegacy(userId: String? = nil, parentId: String? = nil, includeItemTypes: [BaseItemKind]? = nil, mediaTypes: [String]? = nil) -> AnyPublisher<QueryFiltersLegacy, Error> {
        var requestTask: RequestTask?
        return Future<QueryFiltersLegacy, Error> { promise in
            requestTask = getQueryFiltersLegacyWithRequestBuilder(userId: userId, parentId: parentId, includeItemTypes: includeItemTypes, mediaTypes: mediaTypes).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Gets legacy query filters.
     - GET /Items/Filters
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (query) Optional. User id. (optional)
     - parameter parentId: (query) Optional. Parent id. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter mediaTypes: (query) Optional. Filter by MediaType. Allows multiple, comma delimited. (optional)
     - returns: RequestBuilder<QueryFiltersLegacy> 
     */
    open class func getQueryFiltersLegacyWithRequestBuilder(userId: String? = nil, parentId: String? = nil, includeItemTypes: [BaseItemKind]? = nil, mediaTypes: [String]? = nil) -> RequestBuilder<QueryFiltersLegacy> {
        let localVariablePath = "/Items/Filters"
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "mediaTypes": mediaTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<QueryFiltersLegacy>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
