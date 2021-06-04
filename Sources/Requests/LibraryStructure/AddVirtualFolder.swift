//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension JellyfinAPI.LibraryStructure {

    /** Adds a virtual folder. */
    public enum AddVirtualFolder {

        public static let service = APIService<Response>(id: "AddVirtualFolder", tag: "LibraryStructure", method: "POST", path: "/Library/VirtualFolders", hasBody: true, securityRequirements: [SecurityRequirement(type: "CustomAuthentication", scopes: ["FirstTimeSetupOrElevated"])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name of the virtual folder. */
                public var name: String?

                /** The type of the collection. */
                public var collectionType: CollectionTypeOptions?

                /** The paths of the virtual folder. */
                public var paths: [String]?

                /** Whether to refresh the library. */
                public var refreshLibrary: Bool?

                public init(name: String? = nil, collectionType: CollectionTypeOptions? = nil, paths: [String]? = nil, refreshLibrary: Bool? = nil) {
                    self.name = name
                    self.collectionType = collectionType
                    self.paths = paths
                    self.refreshLibrary = refreshLibrary
                }
            }

            public var options: Options

            public var body: AddVirtualFolderDtoModel?

            public init(body: AddVirtualFolderDtoModel?, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: AddVirtualFolder.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(name: String? = nil, collectionType: CollectionTypeOptions? = nil, paths: [String]? = nil, refreshLibrary: Bool? = nil, body: AddVirtualFolderDtoModel? = nil) {
                let options = Options(name: name, collectionType: collectionType, paths: paths, refreshLibrary: refreshLibrary)
                self.init(body: body, options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let name = options.name {
                  params["name"] = name
                }
                if let collectionType = options.collectionType?.encode() {
                  params["collectionType"] = collectionType
                }
                if let paths = options.paths?.joined(separator: ",") {
                  params["paths"] = paths
                }
                if let refreshLibrary = options.refreshLibrary {
                  params["refreshLibrary"] = refreshLibrary
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Folder added. */
            case status204

            /** Unauthorized */
            case status401

            /** Forbidden */
            case status403

            public var success: Void? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status401: return 401
                case .status403: return 403
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status401: return false
                case .status403: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
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
