//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct RemoteSubtitleInfoModel: APIModel {

    public var author: String?

    public var comment: String?

    public var communityRating: Float?

    public var dateCreated: DateTime?

    public var downloadCount: Int?

    public var format: String?

    public var id: String?

    public var isHashMatch: Bool?

    public var name: String?

    public var providerName: String?

    public var threeLetterISOLanguageName: String?

    public init(author: String? = nil, comment: String? = nil, communityRating: Float? = nil, dateCreated: DateTime? = nil, downloadCount: Int? = nil, format: String? = nil, id: String? = nil, isHashMatch: Bool? = nil, name: String? = nil, providerName: String? = nil, threeLetterISOLanguageName: String? = nil) {
        self.author = author
        self.comment = comment
        self.communityRating = communityRating
        self.dateCreated = dateCreated
        self.downloadCount = downloadCount
        self.format = format
        self.id = id
        self.isHashMatch = isHashMatch
        self.name = name
        self.providerName = providerName
        self.threeLetterISOLanguageName = threeLetterISOLanguageName
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        author = try decoderContainer.decodeIfPresent("Author")
        comment = try decoderContainer.decodeIfPresent("Comment")
        communityRating = try decoderContainer.decodeIfPresent("CommunityRating")
        dateCreated = try decoderContainer.decodeIfPresent("DateCreated")
        downloadCount = try decoderContainer.decodeIfPresent("DownloadCount")
        format = try decoderContainer.decodeIfPresent("Format")
        id = try decoderContainer.decodeIfPresent("Id")
        isHashMatch = try decoderContainer.decodeIfPresent("IsHashMatch")
        name = try decoderContainer.decodeIfPresent("Name")
        providerName = try decoderContainer.decodeIfPresent("ProviderName")
        threeLetterISOLanguageName = try decoderContainer.decodeIfPresent("ThreeLetterISOLanguageName")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(author, forKey: "Author")
        try encoderContainer.encodeIfPresent(comment, forKey: "Comment")
        try encoderContainer.encodeIfPresent(communityRating, forKey: "CommunityRating")
        try encoderContainer.encodeIfPresent(dateCreated, forKey: "DateCreated")
        try encoderContainer.encodeIfPresent(downloadCount, forKey: "DownloadCount")
        try encoderContainer.encodeIfPresent(format, forKey: "Format")
        try encoderContainer.encodeIfPresent(id, forKey: "Id")
        try encoderContainer.encodeIfPresent(isHashMatch, forKey: "IsHashMatch")
        try encoderContainer.encodeIfPresent(name, forKey: "Name")
        try encoderContainer.encodeIfPresent(providerName, forKey: "ProviderName")
        try encoderContainer.encodeIfPresent(threeLetterISOLanguageName, forKey: "ThreeLetterISOLanguageName")
    }

}
