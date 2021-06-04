//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public enum RecordingStatus: String, Codable, Equatable, CaseIterable {
    case new = "New"
    case inProgress = "InProgress"
    case completed = "Completed"
    case cancelled = "Cancelled"
    case conflictedOk = "ConflictedOk"
    case conflictedNotOk = "ConflictedNotOk"
    case error = "Error"
}