//
// DlnaServerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
#if canImport(Combine)
import Combine
#endif

open class DlnaServerAPI {
    /**
     Gets Dlna media receiver registrar xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getConnectionManager(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getConnectionManagerWithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna media receiver registrar xml.
     - GET /Dlna/{serverId}/ConnectionManager
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getConnectionManagerWithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/ConnectionManager"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets Dlna media receiver registrar xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getConnectionManager2(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getConnectionManager2WithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna media receiver registrar xml.
     - GET /Dlna/{serverId}/ConnectionManager/ConnectionManager
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getConnectionManager2WithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/ConnectionManager/ConnectionManager"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets Dlna media receiver registrar xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getConnectionManager3(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getConnectionManager3WithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna media receiver registrar xml.
     - GET /Dlna/{serverId}/ConnectionManager/ConnectionManager.xml
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getConnectionManager3WithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/ConnectionManager/ConnectionManager.xml"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets Dlna content directory xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getContentDirectory(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getContentDirectoryWithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna content directory xml.
     - GET /Dlna/{serverId}/ContentDirectory
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getContentDirectoryWithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/ContentDirectory"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets Dlna content directory xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getContentDirectory2(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getContentDirectory2WithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna content directory xml.
     - GET /Dlna/{serverId}/ContentDirectory/ContentDirectory
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getContentDirectory2WithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/ContentDirectory/ContentDirectory"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets Dlna content directory xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getContentDirectory3(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getContentDirectory3WithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna content directory xml.
     - GET /Dlna/{serverId}/ContentDirectory/ContentDirectory.xml
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getContentDirectory3WithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/ContentDirectory/ContentDirectory.xml"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Description Xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDescriptionXml(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getDescriptionXmlWithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Get Description Xml.
     - GET /Dlna/{serverId}/description
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getDescriptionXmlWithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/description"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Description Xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDescriptionXml2(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getDescriptionXml2WithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Get Description Xml.
     - GET /Dlna/{serverId}/description.xml
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getDescriptionXml2WithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/description.xml"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a server icon.
     
     - parameter fileName: (path) The icon filename. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIcon(fileName: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getIconWithRequestBuilder(fileName: fileName).execute(apiResponseQueue) { result -> Void in
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
     Gets a server icon.
     - GET /Dlna/icons/{fileName}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter fileName: (path) The icon filename. 
     - returns: RequestBuilder<URL> 
     */
    open class func getIconWithRequestBuilder(fileName: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/icons/{fileName}"
        let fileNamePreEscape = "\(APIHelper.mapValueToPathItem(fileName))"
        let fileNamePostEscape = fileNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{fileName}", with: fileNamePostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a server icon.
     
     - parameter serverId: (path) Server UUID. 
     - parameter fileName: (path) The icon filename. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getIconId(serverId: String, fileName: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getIconIdWithRequestBuilder(serverId: serverId, fileName: fileName).execute(apiResponseQueue) { result -> Void in
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
     Gets a server icon.
     - GET /Dlna/{serverId}/icons/{fileName}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - parameter fileName: (path) The icon filename. 
     - returns: RequestBuilder<URL> 
     */
    open class func getIconIdWithRequestBuilder(serverId: String, fileName: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/icons/{fileName}"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let fileNamePreEscape = "\(APIHelper.mapValueToPathItem(fileName))"
        let fileNamePostEscape = fileNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{fileName}", with: fileNamePostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets Dlna media receiver registrar xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMediaReceiverRegistrar(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getMediaReceiverRegistrarWithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna media receiver registrar xml.
     - GET /Dlna/{serverId}/MediaReceiverRegistrar
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getMediaReceiverRegistrarWithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/MediaReceiverRegistrar"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets Dlna media receiver registrar xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMediaReceiverRegistrar2(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getMediaReceiverRegistrar2WithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna media receiver registrar xml.
     - GET /Dlna/{serverId}/MediaReceiverRegistrar/MediaReceiverRegistrar
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getMediaReceiverRegistrar2WithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/MediaReceiverRegistrar/MediaReceiverRegistrar"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets Dlna media receiver registrar xml.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getMediaReceiverRegistrar3(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            getMediaReceiverRegistrar3WithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Gets Dlna media receiver registrar xml.
     - GET /Dlna/{serverId}/MediaReceiverRegistrar/MediaReceiverRegistrar.xml
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func getMediaReceiverRegistrar3WithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/MediaReceiverRegistrar/MediaReceiverRegistrar.xml"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Process a connection manager control request.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func processConnectionManagerControlRequest(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            processConnectionManagerControlRequestWithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Process a connection manager control request.
     - POST /Dlna/{serverId}/ConnectionManager/Control
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func processConnectionManagerControlRequestWithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/ConnectionManager/Control"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Process a content directory control request.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func processContentDirectoryControlRequest(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            processContentDirectoryControlRequestWithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Process a content directory control request.
     - POST /Dlna/{serverId}/ContentDirectory/Control
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func processContentDirectoryControlRequestWithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/ContentDirectory/Control"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Process a media receiver registrar control request.
     
     - parameter serverId: (path) Server UUID. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<URL, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func processMediaReceiverRegistrarControlRequest(serverId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> AnyPublisher<URL, Error> {
        return Future<URL, Error>.init { promise in
            processMediaReceiverRegistrarControlRequestWithRequestBuilder(serverId: serverId).execute(apiResponseQueue) { result -> Void in
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
     Process a media receiver registrar control request.
     - POST /Dlna/{serverId}/MediaReceiverRegistrar/Control
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter serverId: (path) Server UUID. 
     - returns: RequestBuilder<URL> 
     */
    open class func processMediaReceiverRegistrarControlRequestWithRequestBuilder(serverId: String) -> RequestBuilder<URL> {
        var urlPath = "/Dlna/{serverId}/MediaReceiverRegistrar/Control"
        let serverIdPreEscape = "\(APIHelper.mapValueToPathItem(serverId))"
        let serverIdPostEscape = serverIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{serverId}", with: serverIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
