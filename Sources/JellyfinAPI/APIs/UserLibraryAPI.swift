//
// UserLibraryAPI.swift
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

open class UserLibraryAPI {

    /**
     Deletes a user's saved personal rating for an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: AnyPublisher<UserItemDataDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteUserItemRating(userId: String, itemId: String) -> AnyPublisher<UserItemDataDto, Error> {
        var requestTask: RequestTask?
        return Future<UserItemDataDto, Error> { promise in
            requestTask = deleteUserItemRatingWithRequestBuilder(userId: userId, itemId: itemId).execute { result in
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
     Deletes a user's saved personal rating for an item.
     - DELETE /Users/{userId}/Items/{itemId}/Rating
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func deleteUserItemRatingWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<UserItemDataDto> {
        var localVariablePath = "/Users/{userId}/Items/{itemId}/Rating"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets intros to play before the main media item plays.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIntros(userId: String, itemId: String) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getIntrosWithRequestBuilder(userId: userId, itemId: itemId).execute { result in
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
     Gets intros to play before the main media item plays.
     - GET /Users/{userId}/Items/{itemId}/Intros
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getIntrosWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<BaseItemDtoQueryResult> {
        var localVariablePath = "/Users/{userId}/Items/{itemId}/Intros"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets an item from a user's library.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: AnyPublisher<BaseItemDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getItem(userId: String, itemId: String) -> AnyPublisher<BaseItemDto, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDto, Error> { promise in
            requestTask = getItemWithRequestBuilder(userId: userId, itemId: itemId).execute { result in
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
     Gets an item from a user's library.
     - GET /Users/{userId}/Items/{itemId}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getItemWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<BaseItemDto> {
        var localVariablePath = "/Users/{userId}/Items/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDto>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets latest media.
     
     - parameter userId: (path) User id. 
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isPlayed: (query) Filter by items that are played, or not. (optional)
     - parameter enableImages: (query) Optional. include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. include user data. (optional)
     - parameter limit: (query) Return item limit. (optional, default to 20)
     - parameter groupItems: (query) Whether or not to group items into a parent container. (optional, default to true)
     - returns: AnyPublisher<[BaseItemDto], Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLatestMedia(userId: String, parentId: String? = nil, fields: [ItemFields]? = nil, includeItemTypes: [BaseItemKind]? = nil, isPlayed: Bool? = nil, enableImages: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, limit: Int? = nil, groupItems: Bool? = nil) -> AnyPublisher<[BaseItemDto], Error> {
        var requestTask: RequestTask?
        return Future<[BaseItemDto], Error> { promise in
            requestTask = getLatestMediaWithRequestBuilder(userId: userId, parentId: parentId, fields: fields, includeItemTypes: includeItemTypes, isPlayed: isPlayed, enableImages: enableImages, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, enableUserData: enableUserData, limit: limit, groupItems: groupItems).execute { result in
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
     Gets latest media.
     - GET /Users/{userId}/Items/Latest
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isPlayed: (query) Filter by items that are played, or not. (optional)
     - parameter enableImages: (query) Optional. include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. include user data. (optional)
     - parameter limit: (query) Return item limit. (optional, default to 20)
     - parameter groupItems: (query) Whether or not to group items into a parent container. (optional, default to true)
     - returns: RequestBuilder<[BaseItemDto]> 
     */
    open class func getLatestMediaWithRequestBuilder(userId: String, parentId: String? = nil, fields: [ItemFields]? = nil, includeItemTypes: [BaseItemKind]? = nil, isPlayed: Bool? = nil, enableImages: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, limit: Int? = nil, groupItems: Bool? = nil) -> RequestBuilder<[BaseItemDto]> {
        var localVariablePath = "/Users/{userId}/Items/Latest"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "parentId": parentId?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "isPlayed": isPlayed?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "groupItems": groupItems?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[BaseItemDto]>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets local trailers for an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: AnyPublisher<[BaseItemDto], Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLocalTrailers(userId: String, itemId: String) -> AnyPublisher<[BaseItemDto], Error> {
        var requestTask: RequestTask?
        return Future<[BaseItemDto], Error> { promise in
            requestTask = getLocalTrailersWithRequestBuilder(userId: userId, itemId: itemId).execute { result in
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
     Gets local trailers for an item.
     - GET /Users/{userId}/Items/{itemId}/LocalTrailers
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<[BaseItemDto]> 
     */
    open class func getLocalTrailersWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<[BaseItemDto]> {
        var localVariablePath = "/Users/{userId}/Items/{itemId}/LocalTrailers"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[BaseItemDto]>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets the root folder from a user's library.
     
     - parameter userId: (path) User id. 
     - returns: AnyPublisher<BaseItemDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRootFolder(userId: String) -> AnyPublisher<BaseItemDto, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDto, Error> { promise in
            requestTask = getRootFolderWithRequestBuilder(userId: userId).execute { result in
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
     Gets the root folder from a user's library.
     - GET /Users/{userId}/Items/Root
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getRootFolderWithRequestBuilder(userId: String) -> RequestBuilder<BaseItemDto> {
        var localVariablePath = "/Users/{userId}/Items/Root"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDto>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets special features for an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: AnyPublisher<[BaseItemDto], Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getSpecialFeatures(userId: String, itemId: String) -> AnyPublisher<[BaseItemDto], Error> {
        var requestTask: RequestTask?
        return Future<[BaseItemDto], Error> { promise in
            requestTask = getSpecialFeaturesWithRequestBuilder(userId: userId, itemId: itemId).execute { result in
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
     Gets special features for an item.
     - GET /Users/{userId}/Items/{itemId}/SpecialFeatures
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<[BaseItemDto]> 
     */
    open class func getSpecialFeaturesWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<[BaseItemDto]> {
        var localVariablePath = "/Users/{userId}/Items/{itemId}/SpecialFeatures"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[BaseItemDto]>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Marks an item as a favorite.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: AnyPublisher<UserItemDataDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func markFavoriteItem(userId: String, itemId: String) -> AnyPublisher<UserItemDataDto, Error> {
        var requestTask: RequestTask?
        return Future<UserItemDataDto, Error> { promise in
            requestTask = markFavoriteItemWithRequestBuilder(userId: userId, itemId: itemId).execute { result in
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
     Marks an item as a favorite.
     - POST /Users/{userId}/FavoriteItems/{itemId}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func markFavoriteItemWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<UserItemDataDto> {
        var localVariablePath = "/Users/{userId}/FavoriteItems/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Unmarks item as a favorite.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: AnyPublisher<UserItemDataDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unmarkFavoriteItem(userId: String, itemId: String) -> AnyPublisher<UserItemDataDto, Error> {
        var requestTask: RequestTask?
        return Future<UserItemDataDto, Error> { promise in
            requestTask = unmarkFavoriteItemWithRequestBuilder(userId: userId, itemId: itemId).execute { result in
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
     Unmarks item as a favorite.
     - DELETE /Users/{userId}/FavoriteItems/{itemId}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func unmarkFavoriteItemWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<UserItemDataDto> {
        var localVariablePath = "/Users/{userId}/FavoriteItems/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Updates a user's rating for an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter likes: (query) Whether this M:Jellyfin.Api.Controllers.UserLibraryController.UpdateUserItemRating(System.Guid,System.Guid,System.Nullable{System.Boolean}) is likes. (optional)
     - returns: AnyPublisher<UserItemDataDto, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateUserItemRating(userId: String, itemId: String, likes: Bool? = nil) -> AnyPublisher<UserItemDataDto, Error> {
        var requestTask: RequestTask?
        return Future<UserItemDataDto, Error> { promise in
            requestTask = updateUserItemRatingWithRequestBuilder(userId: userId, itemId: itemId, likes: likes).execute { result in
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
     Updates a user's rating for an item.
     - POST /Users/{userId}/Items/{itemId}/Rating
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter likes: (query) Whether this M:Jellyfin.Api.Controllers.UserLibraryController.UpdateUserItemRating(System.Guid,System.Guid,System.Nullable{System.Boolean}) is likes. (optional)
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func updateUserItemRatingWithRequestBuilder(userId: String, itemId: String, likes: Bool? = nil) -> RequestBuilder<UserItemDataDto> {
        var localVariablePath = "/Users/{userId}/Items/{itemId}/Rating"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "likes": likes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
