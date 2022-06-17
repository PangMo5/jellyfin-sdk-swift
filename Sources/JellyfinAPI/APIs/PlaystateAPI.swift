//
// PlaystateAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
#if canImport(Combine)
import Combine
#endif

open class PlaystateAPI {
    /**
     Marks an item as played for user.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter datePlayed: (query) Optional. The date the item was played. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UserItemDataDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func markPlayedItem(userId: String, itemId: String, datePlayed: Date? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<UserItemDataDto, Error> {
        return Future<UserItemDataDto, Error>.init { promise in
            markPlayedItemWithRequestBuilder(userId: userId, itemId: itemId, datePlayed: datePlayed).execute(apiResponseQueue) { result -> Void in
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
     Marks an item as played for user.
     - POST /Users/{userId}/PlayedItems/{itemId}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter datePlayed: (query) Optional. The date the item was played. (optional)
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func markPlayedItemWithRequestBuilder(userId: String, itemId: String, datePlayed: Date? = nil) -> RequestBuilder<UserItemDataDto> {
        var urlPath = "/Users/{userId}/PlayedItems/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "datePlayed": datePlayed?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Marks an item as unplayed for user.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UserItemDataDto, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func markUnplayedItem(userId: String, itemId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<UserItemDataDto, Error> {
        return Future<UserItemDataDto, Error>.init { promise in
            markUnplayedItemWithRequestBuilder(userId: userId, itemId: itemId).execute(apiResponseQueue) { result -> Void in
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
     Marks an item as unplayed for user.
     - DELETE /Users/{userId}/PlayedItems/{itemId}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func markUnplayedItemWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<UserItemDataDto> {
        var urlPath = "/Users/{userId}/PlayedItems/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Reports a user's playback progress.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter mediaSourceId: (query) The id of the MediaSource. (optional)
     - parameter positionTicks: (query) Optional. The current position, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter audioStreamIndex: (query) The audio stream index. (optional)
     - parameter subtitleStreamIndex: (query) The subtitle stream index. (optional)
     - parameter volumeLevel: (query) Scale of 0-100. (optional)
     - parameter playMethod: (query) The play method. (optional)
     - parameter liveStreamId: (query) The live stream id. (optional)
     - parameter playSessionId: (query) The play session id. (optional)
     - parameter repeatMode: (query) The repeat mode. (optional)
     - parameter isPaused: (query) Indicates if the player is paused. (optional, default to false)
     - parameter isMuted: (query) Indicates if the player is muted. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func onPlaybackProgress(userId: String, itemId: String, mediaSourceId: String? = nil, positionTicks: Int64? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, volumeLevel: Int? = nil, playMethod: PlayMethod? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, repeatMode: RepeatMode? = nil, isPaused: Bool? = nil, isMuted: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            onPlaybackProgressWithRequestBuilder(userId: userId, itemId: itemId, mediaSourceId: mediaSourceId, positionTicks: positionTicks, audioStreamIndex: audioStreamIndex, subtitleStreamIndex: subtitleStreamIndex, volumeLevel: volumeLevel, playMethod: playMethod, liveStreamId: liveStreamId, playSessionId: playSessionId, repeatMode: repeatMode, isPaused: isPaused, isMuted: isMuted).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Reports a user's playback progress.
     - POST /Users/{userId}/PlayingItems/{itemId}/Progress
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter mediaSourceId: (query) The id of the MediaSource. (optional)
     - parameter positionTicks: (query) Optional. The current position, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter audioStreamIndex: (query) The audio stream index. (optional)
     - parameter subtitleStreamIndex: (query) The subtitle stream index. (optional)
     - parameter volumeLevel: (query) Scale of 0-100. (optional)
     - parameter playMethod: (query) The play method. (optional)
     - parameter liveStreamId: (query) The live stream id. (optional)
     - parameter playSessionId: (query) The play session id. (optional)
     - parameter repeatMode: (query) The repeat mode. (optional)
     - parameter isPaused: (query) Indicates if the player is paused. (optional, default to false)
     - parameter isMuted: (query) Indicates if the player is muted. (optional, default to false)
     - returns: RequestBuilder<Void> 
     */
    open class func onPlaybackProgressWithRequestBuilder(userId: String, itemId: String, mediaSourceId: String? = nil, positionTicks: Int64? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, volumeLevel: Int? = nil, playMethod: PlayMethod? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, repeatMode: RepeatMode? = nil, isPaused: Bool? = nil, isMuted: Bool? = nil) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}/PlayingItems/{itemId}/Progress"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "mediaSourceId": mediaSourceId?.encodeToJSON(),
            "positionTicks": positionTicks?.encodeToJSON(),
            "audioStreamIndex": audioStreamIndex?.encodeToJSON(),
            "subtitleStreamIndex": subtitleStreamIndex?.encodeToJSON(),
            "volumeLevel": volumeLevel?.encodeToJSON(),
            "playMethod": playMethod?.encodeToJSON(),
            "liveStreamId": liveStreamId?.encodeToJSON(),
            "playSessionId": playSessionId?.encodeToJSON(),
            "repeatMode": repeatMode?.encodeToJSON(),
            "isPaused": isPaused?.encodeToJSON(),
            "isMuted": isMuted?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Reports that a user has begun playing an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter mediaSourceId: (query) The id of the MediaSource. (optional)
     - parameter audioStreamIndex: (query) The audio stream index. (optional)
     - parameter subtitleStreamIndex: (query) The subtitle stream index. (optional)
     - parameter playMethod: (query) The play method. (optional)
     - parameter liveStreamId: (query) The live stream id. (optional)
     - parameter playSessionId: (query) The play session id. (optional)
     - parameter canSeek: (query) Indicates if the client can seek. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func onPlaybackStart(userId: String, itemId: String, mediaSourceId: String? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, playMethod: PlayMethod? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, canSeek: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            onPlaybackStartWithRequestBuilder(userId: userId, itemId: itemId, mediaSourceId: mediaSourceId, audioStreamIndex: audioStreamIndex, subtitleStreamIndex: subtitleStreamIndex, playMethod: playMethod, liveStreamId: liveStreamId, playSessionId: playSessionId, canSeek: canSeek).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Reports that a user has begun playing an item.
     - POST /Users/{userId}/PlayingItems/{itemId}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter mediaSourceId: (query) The id of the MediaSource. (optional)
     - parameter audioStreamIndex: (query) The audio stream index. (optional)
     - parameter subtitleStreamIndex: (query) The subtitle stream index. (optional)
     - parameter playMethod: (query) The play method. (optional)
     - parameter liveStreamId: (query) The live stream id. (optional)
     - parameter playSessionId: (query) The play session id. (optional)
     - parameter canSeek: (query) Indicates if the client can seek. (optional, default to false)
     - returns: RequestBuilder<Void> 
     */
    open class func onPlaybackStartWithRequestBuilder(userId: String, itemId: String, mediaSourceId: String? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, playMethod: PlayMethod? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, canSeek: Bool? = nil) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}/PlayingItems/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "mediaSourceId": mediaSourceId?.encodeToJSON(),
            "audioStreamIndex": audioStreamIndex?.encodeToJSON(),
            "subtitleStreamIndex": subtitleStreamIndex?.encodeToJSON(),
            "playMethod": playMethod?.encodeToJSON(),
            "liveStreamId": liveStreamId?.encodeToJSON(),
            "playSessionId": playSessionId?.encodeToJSON(),
            "canSeek": canSeek?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Reports that a user has stopped playing an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter mediaSourceId: (query) The id of the MediaSource. (optional)
     - parameter nextMediaType: (query) The next media type that will play. (optional)
     - parameter positionTicks: (query) Optional. The position, in ticks, where playback stopped. 1 tick &#x3D; 10000 ms. (optional)
     - parameter liveStreamId: (query) The live stream id. (optional)
     - parameter playSessionId: (query) The play session id. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func onPlaybackStopped(userId: String, itemId: String, mediaSourceId: String? = nil, nextMediaType: String? = nil, positionTicks: Int64? = nil, liveStreamId: String? = nil, playSessionId: String? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            onPlaybackStoppedWithRequestBuilder(userId: userId, itemId: itemId, mediaSourceId: mediaSourceId, nextMediaType: nextMediaType, positionTicks: positionTicks, liveStreamId: liveStreamId, playSessionId: playSessionId).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Reports that a user has stopped playing an item.
     - DELETE /Users/{userId}/PlayingItems/{itemId}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter mediaSourceId: (query) The id of the MediaSource. (optional)
     - parameter nextMediaType: (query) The next media type that will play. (optional)
     - parameter positionTicks: (query) Optional. The position, in ticks, where playback stopped. 1 tick &#x3D; 10000 ms. (optional)
     - parameter liveStreamId: (query) The live stream id. (optional)
     - parameter playSessionId: (query) The play session id. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func onPlaybackStoppedWithRequestBuilder(userId: String, itemId: String, mediaSourceId: String? = nil, nextMediaType: String? = nil, positionTicks: Int64? = nil, liveStreamId: String? = nil, playSessionId: String? = nil) -> RequestBuilder<Void> {
        var urlPath = "/Users/{userId}/PlayingItems/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "mediaSourceId": mediaSourceId?.encodeToJSON(),
            "nextMediaType": nextMediaType?.encodeToJSON(),
            "positionTicks": positionTicks?.encodeToJSON(),
            "liveStreamId": liveStreamId?.encodeToJSON(),
            "playSessionId": playSessionId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Pings a playback session.
     
     - parameter playSessionId: (query) Playback session id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func pingPlaybackSession(playSessionId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            pingPlaybackSessionWithRequestBuilder(playSessionId: playSessionId).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Pings a playback session.
     - POST /Sessions/Playing/Ping
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter playSessionId: (query) Playback session id. 
     - returns: RequestBuilder<Void> 
     */
    open class func pingPlaybackSessionWithRequestBuilder(playSessionId: String) -> RequestBuilder<Void> {
        let urlPath = "/Sessions/Playing/Ping"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "playSessionId": playSessionId.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Reports playback progress within a session.
     
     - parameter reportPlaybackProgressRequest: (body) The playback progress info. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reportPlaybackProgress(reportPlaybackProgressRequest: ReportPlaybackProgressRequest? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            reportPlaybackProgressWithRequestBuilder(reportPlaybackProgressRequest: reportPlaybackProgressRequest).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Reports playback progress within a session.
     - POST /Sessions/Playing/Progress
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter reportPlaybackProgressRequest: (body) The playback progress info. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func reportPlaybackProgressWithRequestBuilder(reportPlaybackProgressRequest: ReportPlaybackProgressRequest? = nil) -> RequestBuilder<Void> {
        let urlPath = "/Sessions/Playing/Progress"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: reportPlaybackProgressRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Reports playback has started within a session.
     
     - parameter reportPlaybackStartRequest: (body) The playback start info. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reportPlaybackStart(reportPlaybackStartRequest: ReportPlaybackStartRequest? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            reportPlaybackStartWithRequestBuilder(reportPlaybackStartRequest: reportPlaybackStartRequest).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Reports playback has started within a session.
     - POST /Sessions/Playing
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter reportPlaybackStartRequest: (body) The playback start info. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func reportPlaybackStartWithRequestBuilder(reportPlaybackStartRequest: ReportPlaybackStartRequest? = nil) -> RequestBuilder<Void> {
        let urlPath = "/Sessions/Playing"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: reportPlaybackStartRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Reports playback has stopped within a session.
     
     - parameter reportPlaybackStoppedRequest: (body) The playback stop info. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func reportPlaybackStopped(reportPlaybackStoppedRequest: ReportPlaybackStoppedRequest? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            reportPlaybackStoppedWithRequestBuilder(reportPlaybackStoppedRequest: reportPlaybackStoppedRequest).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Reports playback has stopped within a session.
     - POST /Sessions/Playing/Stopped
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter reportPlaybackStoppedRequest: (body) The playback stop info. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func reportPlaybackStoppedWithRequestBuilder(reportPlaybackStoppedRequest: ReportPlaybackStoppedRequest? = nil) -> RequestBuilder<Void> {
        let urlPath = "/Sessions/Playing/Stopped"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: reportPlaybackStoppedRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
