//
// ActivityLogAPI.swift
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

open class ActivityLogAPI {

    /**
     Gets activity log entries.
     
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter minDate: (query) Optional. The minimum date. Format &#x3D; ISO. (optional)
     - parameter hasUserId: (query) Optional. Filter log entries if it has user id, or not. (optional)
     - returns: AnyPublisher<ActivityLogEntryQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getLogEntries(startIndex: Int? = nil, limit: Int? = nil, minDate: Date? = nil, hasUserId: Bool? = nil) -> AnyPublisher<ActivityLogEntryQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<ActivityLogEntryQueryResult, Error> { promise in
            requestTask = getLogEntriesWithRequestBuilder(startIndex: startIndex, limit: limit, minDate: minDate, hasUserId: hasUserId).execute { result in
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
     Gets activity log entries.
     - GET /System/ActivityLog/Entries
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter minDate: (query) Optional. The minimum date. Format &#x3D; ISO. (optional)
     - parameter hasUserId: (query) Optional. Filter log entries if it has user id, or not. (optional)
     - returns: RequestBuilder<ActivityLogEntryQueryResult> 
     */
    open class func getLogEntriesWithRequestBuilder(startIndex: Int? = nil, limit: Int? = nil, minDate: Date? = nil, hasUserId: Bool? = nil) -> RequestBuilder<ActivityLogEntryQueryResult> {
        let localVariablePath = "/System/ActivityLog/Entries"
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "minDate": minDate?.encodeToJSON(),
            "hasUserId": hasUserId?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ActivityLogEntryQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
