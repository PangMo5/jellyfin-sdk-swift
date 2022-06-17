//
// AddVirtualFolderRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Add virtual folder dto. */
public struct AddVirtualFolderRequest: Codable, Hashable {

    public var libraryOptions: AddVirtualFolderDtoLibraryOptions?

    public init(libraryOptions: AddVirtualFolderDtoLibraryOptions? = nil) {
        self.libraryOptions = libraryOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case libraryOptions = "LibraryOptions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(libraryOptions, forKey: .libraryOptions)
    }
}
