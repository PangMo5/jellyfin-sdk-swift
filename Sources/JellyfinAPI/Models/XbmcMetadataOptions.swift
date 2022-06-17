//
// XbmcMetadataOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct XbmcMetadataOptions: Codable, Hashable {

    public var userId: String?
    public var releaseDateFormat: String?
    public var saveImagePathsInNfo: Bool?
    public var enablePathSubstitution: Bool?
    public var enableExtraThumbsDuplication: Bool?

    public init(userId: String? = nil, releaseDateFormat: String? = nil, saveImagePathsInNfo: Bool? = nil, enablePathSubstitution: Bool? = nil, enableExtraThumbsDuplication: Bool? = nil) {
        self.userId = userId
        self.releaseDateFormat = releaseDateFormat
        self.saveImagePathsInNfo = saveImagePathsInNfo
        self.enablePathSubstitution = enablePathSubstitution
        self.enableExtraThumbsDuplication = enableExtraThumbsDuplication
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId = "UserId"
        case releaseDateFormat = "ReleaseDateFormat"
        case saveImagePathsInNfo = "SaveImagePathsInNfo"
        case enablePathSubstitution = "EnablePathSubstitution"
        case enableExtraThumbsDuplication = "EnableExtraThumbsDuplication"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(userId, forKey: .userId)
        try encoderContainer.encodeIfPresent(releaseDateFormat, forKey: .releaseDateFormat)
        try encoderContainer.encodeIfPresent(saveImagePathsInNfo, forKey: .saveImagePathsInNfo)
        try encoderContainer.encodeIfPresent(enablePathSubstitution, forKey: .enablePathSubstitution)
        try encoderContainer.encodeIfPresent(enableExtraThumbsDuplication, forKey: .enableExtraThumbsDuplication)
    }
}
