//
// ItemUpdateAPI.swift
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

open class ItemUpdateAPI {

    /**
     Gets metadata editor info for an item.
     
     - parameter itemId: (path) The item id. 
     - returns: AnyPublisher<MetadataEditorInfo, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMetadataEditorInfo(itemId: String) -> AnyPublisher<MetadataEditorInfo, Error> {
        var requestTask: RequestTask?
        return Future<MetadataEditorInfo, Error> { promise in
            requestTask = getMetadataEditorInfoWithRequestBuilder(itemId: itemId).execute { result in
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
     Gets metadata editor info for an item.
     - GET /Items/{itemId}/MetadataEditor
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - returns: RequestBuilder<MetadataEditorInfo> 
     */
    open class func getMetadataEditorInfoWithRequestBuilder(itemId: String) -> RequestBuilder<MetadataEditorInfo> {
        var localVariablePath = "/Items/{itemId}/MetadataEditor"
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

        let localVariableRequestBuilder: RequestBuilder<MetadataEditorInfo>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Updates an item.
     
     - parameter itemId: (path) The item id. 
     - parameter updateItemRequest: (body) The new item properties. 
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateItem(itemId: String, updateItemRequest: UpdateItemRequest) -> AnyPublisher<Void, Error> {
        var requestTask: RequestTask?
        return Future<Void, Error> { promise in
            requestTask = updateItemWithRequestBuilder(itemId: itemId, updateItemRequest: updateItemRequest).execute { result in
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
     Updates an item.
     - POST /Items/{itemId}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter updateItemRequest: (body) The new item properties. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateItemWithRequestBuilder(itemId: String, updateItemRequest: UpdateItemRequest) -> RequestBuilder<Void> {
        var localVariablePath = "/Items/{itemId}"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateItemRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = JellyfinAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Updates an item's content type.
     
     - parameter itemId: (path) The item id. 
     - parameter contentType: (query) The content type of the item. (optional)
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateItemContentType(itemId: String, contentType: String? = nil) -> AnyPublisher<Void, Error> {
        var requestTask: RequestTask?
        return Future<Void, Error> { promise in
            requestTask = updateItemContentTypeWithRequestBuilder(itemId: itemId, contentType: contentType).execute { result in
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
     Updates an item's content type.
     - POST /Items/{itemId}/ContentType
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter contentType: (query) The content type of the item. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updateItemContentTypeWithRequestBuilder(itemId: String, contentType: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/Items/{itemId}/ContentType"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "contentType": contentType?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = JellyfinAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
