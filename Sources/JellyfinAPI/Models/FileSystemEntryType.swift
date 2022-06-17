//
// FileSystemEntryType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Enum FileSystemEntryType. */
public enum FileSystemEntryType: String, Codable, CaseIterable {
    case file = "File"
    case directory = "Directory"
    case networkComputer = "NetworkComputer"
    case networkShare = "NetworkShare"
}
