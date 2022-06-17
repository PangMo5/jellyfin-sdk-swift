//
// ClientLogDocumentResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Client log document response dto. */
public struct ClientLogDocumentResponseDto: Codable, Hashable {

    /** Gets the resulting filename. */
    public var fileName: String?

    public init(fileName: String? = nil) {
        self.fileName = fileName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName = "FileName"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(fileName, forKey: .fileName)
    }
}
