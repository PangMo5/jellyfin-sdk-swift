//
// InstantMixAPI.swift
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

open class InstantMixAPI {

    /**
     Creates an instant playlist based on a given album.
     
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInstantMixFromAlbum(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getInstantMixFromAlbumWithRequestBuilder(id: id, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
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
     Creates an instant playlist based on a given album.
     - GET /Albums/{id}/InstantMix
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getInstantMixFromAlbumWithRequestBuilder(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var localVariablePath = "/Albums/{id}/InstantMix"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates an instant playlist based on a given artist.
     
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInstantMixFromArtists(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getInstantMixFromArtistsWithRequestBuilder(id: id, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
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
     Creates an instant playlist based on a given artist.
     - GET /Artists/{id}/InstantMix
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getInstantMixFromArtistsWithRequestBuilder(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var localVariablePath = "/Artists/{id}/InstantMix"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates an instant playlist based on a given artist.
     
     - parameter id: (query) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInstantMixFromArtists2(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getInstantMixFromArtists2WithRequestBuilder(id: id, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
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
     Creates an instant playlist based on a given artist.
     - GET /Artists/InstantMix
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter id: (query) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func getInstantMixFromArtists2WithRequestBuilder(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let localVariablePath = "/Artists/InstantMix"
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": id.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates an instant playlist based on a given item.
     
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInstantMixFromItem(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getInstantMixFromItemWithRequestBuilder(id: id, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
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
     Creates an instant playlist based on a given item.
     - GET /Items/{id}/InstantMix
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getInstantMixFromItemWithRequestBuilder(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var localVariablePath = "/Items/{id}/InstantMix"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates an instant playlist based on a given genre.
     
     - parameter id: (query) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInstantMixFromMusicGenreById(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getInstantMixFromMusicGenreByIdWithRequestBuilder(id: id, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
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
     Creates an instant playlist based on a given genre.
     - GET /MusicGenres/InstantMix
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter id: (query) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getInstantMixFromMusicGenreByIdWithRequestBuilder(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let localVariablePath = "/MusicGenres/InstantMix"
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": id.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates an instant playlist based on a given genre.
     
     - parameter name: (path) The genre name. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInstantMixFromMusicGenreByName(name: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getInstantMixFromMusicGenreByNameWithRequestBuilder(name: name, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
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
     Creates an instant playlist based on a given genre.
     - GET /MusicGenres/{name}/InstantMix
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter name: (path) The genre name. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getInstantMixFromMusicGenreByNameWithRequestBuilder(name: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var localVariablePath = "/MusicGenres/{name}/InstantMix"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates an instant playlist based on a given playlist.
     
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInstantMixFromPlaylist(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getInstantMixFromPlaylistWithRequestBuilder(id: id, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
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
     Creates an instant playlist based on a given playlist.
     - GET /Playlists/{id}/InstantMix
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getInstantMixFromPlaylistWithRequestBuilder(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var localVariablePath = "/Playlists/{id}/InstantMix"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates an instant playlist based on a given song.
     
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInstantMixFromSong(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getInstantMixFromSongWithRequestBuilder(id: id, userId: userId, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
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
     Creates an instant playlist based on a given song.
     - GET /Songs/{id}/InstantMix
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter id: (path) The item id. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getInstantMixFromSongWithRequestBuilder(id: String, userId: String? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var localVariablePath = "/Songs/{id}/InstantMix"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
