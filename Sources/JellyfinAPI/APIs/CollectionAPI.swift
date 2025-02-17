//
// CollectionAPI.swift
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

open class CollectionAPI {

    /**
     Adds items to a collection.
     
     - parameter collectionId: (path) The collection id. 
     - parameter ids: (query) Item ids, comma delimited. 
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addToCollection(collectionId: String, ids: [String]) -> AnyPublisher<Void, Error> {
        var requestTask: RequestTask?
        return Future<Void, Error> { promise in
            requestTask = addToCollectionWithRequestBuilder(collectionId: collectionId, ids: ids).execute { result in
                switch result {
                case .success:
                    promise(.success(()))
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
     Adds items to a collection.
     - POST /Collections/{collectionId}/Items
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter collectionId: (path) The collection id. 
     - parameter ids: (query) Item ids, comma delimited. 
     - returns: RequestBuilder<Void> 
     */
    open class func addToCollectionWithRequestBuilder(collectionId: String, ids: [String]) -> RequestBuilder<Void> {
        var localVariablePath = "/Collections/{collectionId}/Items"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ids": ids.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = JellyfinAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates a new collection.
     
     - parameter name: (query) The name of the collection. (optional)
     - parameter ids: (query) Item Ids to add to the collection. (optional)
     - parameter parentId: (query) Optional. Create the collection within a specific folder. (optional)
     - parameter isLocked: (query) Whether or not to lock the new collection. (optional, default to false)
     - returns: AnyPublisher<CollectionCreationResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createCollection(name: String? = nil, ids: [String]? = nil, parentId: String? = nil, isLocked: Bool? = nil) -> AnyPublisher<CollectionCreationResult, Error> {
        var requestTask: RequestTask?
        return Future<CollectionCreationResult, Error> { promise in
            requestTask = createCollectionWithRequestBuilder(name: name, ids: ids, parentId: parentId, isLocked: isLocked).execute { result in
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
     Creates a new collection.
     - POST /Collections
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter name: (query) The name of the collection. (optional)
     - parameter ids: (query) Item Ids to add to the collection. (optional)
     - parameter parentId: (query) Optional. Create the collection within a specific folder. (optional)
     - parameter isLocked: (query) Whether or not to lock the new collection. (optional, default to false)
     - returns: RequestBuilder<CollectionCreationResult> 
     */
    open class func createCollectionWithRequestBuilder(name: String? = nil, ids: [String]? = nil, parentId: String? = nil, isLocked: Bool? = nil) -> RequestBuilder<CollectionCreationResult> {
        let localVariablePath = "/Collections"
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": name?.encodeToJSON(),
            "ids": ids?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "isLocked": isLocked?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CollectionCreationResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Removes items from a collection.
     
     - parameter collectionId: (path) The collection id. 
     - parameter ids: (query) Item ids, comma delimited. 
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func removeFromCollection(collectionId: String, ids: [String]) -> AnyPublisher<Void, Error> {
        var requestTask: RequestTask?
        return Future<Void, Error> { promise in
            requestTask = removeFromCollectionWithRequestBuilder(collectionId: collectionId, ids: ids).execute { result in
                switch result {
                case .success:
                    promise(.success(()))
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
     Removes items from a collection.
     - DELETE /Collections/{collectionId}/Items
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter collectionId: (path) The collection id. 
     - parameter ids: (query) Item ids, comma delimited. 
     - returns: RequestBuilder<Void> 
     */
    open class func removeFromCollectionWithRequestBuilder(collectionId: String, ids: [String]) -> RequestBuilder<Void> {
        var localVariablePath = "/Collections/{collectionId}/Items"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ids": ids.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = JellyfinAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
