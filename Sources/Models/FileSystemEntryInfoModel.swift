//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Class FileSystemEntryInfo. */
public struct FileSystemEntryInfoModel: APIModel {

    /** Gets the name. */
    public var name: String?

    /** Gets the path. */
    public var path: String?

    public var type: FileSystemEntryType?

    public init(name: String? = nil, path: String? = nil, type: FileSystemEntryType? = nil) {
        self.name = name
        self.path = path
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        name = try decoderContainer.decodeIfPresent("Name")
        path = try decoderContainer.decodeIfPresent("Path")
        type = try decoderContainer.decodeIfPresent("Type")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(name, forKey: "Name")
        try encoderContainer.encodeIfPresent(path, forKey: "Path")
        try encoderContainer.encodeIfPresent(type, forKey: "Type")
    }

}