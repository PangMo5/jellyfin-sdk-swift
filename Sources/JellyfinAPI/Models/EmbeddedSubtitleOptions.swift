//
// EmbeddedSubtitleOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An enum representing the options to disable embedded subs. */
public enum EmbeddedSubtitleOptions: String, Codable, CaseIterable {
    case allowAll = "AllowAll"
    case allowText = "AllowText"
    case allowImage = "AllowImage"
    case allowNone = "AllowNone"
}
