//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct JellyfinAPI {

    /// Whether to discard any errors when decoding optional properties
    public static var safeOptionalDecoding = false

    /// Whether to remove invalid elements instead of throwing when decoding arrays
    public static var safeArrayDecoding = false

    /// Used to encode Dates when uses as string params
    public static var dateEncodingFormatter = DateFormatter(formatString: "yyyy-MM-dd'T'HH:mm:ssZZZZZ",
                                                            locale: Locale(identifier: "en_US_POSIX"),
                                                            calendar: Calendar(identifier: .gregorian))

    public static let version = "10.7.6"

    public enum ActivityLog {}
    public enum ApiKey {}
    public enum Artists {}
    public enum Audio {}
    public enum Branding {}
    public enum Channels {}
    public enum Collection {}
    public enum Configuration {}
    public enum Dashboard {}
    public enum Devices {}
    public enum DisplayPreferences {}
    public enum Dlna {}
    public enum DlnaServer {}
    public enum DynamicHls {}
    public enum Environment {}
    public enum Filter {}
    public enum Genres {}
    public enum HlsSegment {}
    public enum Image {}
    public enum ImageByName {}
    public enum InstantMix {}
    public enum ItemLookup {}
    public enum ItemRefresh {}
    public enum ItemUpdate {}
    public enum Items {}
    public enum Library {}
    public enum LibraryStructure {}
    public enum LiveTv {}
    public enum Localization {}
    public enum MediaInfo {}
    public enum Movies {}
    public enum MusicGenres {}
    public enum Notifications {}
    public enum Package {}
    public enum Persons {}
    public enum Playlists {}
    public enum Playstate {}
    public enum Plugins {}
    public enum QuickConnect {}
    public enum RemoteImage {}
    public enum ScheduledTasks {}
    public enum Search {}
    public enum Session {}
    public enum Startup {}
    public enum Studios {}
    public enum Subtitle {}
    public enum Suggestions {}
    public enum SyncPlay {}
    public enum System {}
    public enum TimeSync {}
    public enum Trailers {}
    public enum TvShows {}
    public enum UniversalAudio {}
    public enum User {}
    public enum UserLibrary {}
    public enum UserViews {}
    public enum VideoAttachments {}
    public enum VideoHls {}
    public enum Videos {}
    public enum Years {}

    public enum Server {

        public static let main = "http://localhost:8096"
    }
}
