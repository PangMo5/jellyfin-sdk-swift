//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Plugin load status. */
/** Plugin load status. */
public enum PluginStatus: String, Codable, Equatable, CaseIterable {
    case active = "Active"
    case restart = "Restart"
    case deleted = "Deleted"
    case superceded = "Superceded"
    case malfunctioned = "Malfunctioned"
    case notSupported = "NotSupported"
    case disabled = "Disabled"
}