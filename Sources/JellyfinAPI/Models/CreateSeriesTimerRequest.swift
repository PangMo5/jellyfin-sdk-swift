//
// CreateSeriesTimerRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class SeriesTimerInfoDto. */
public struct CreateSeriesTimerRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the Id of the recording. */
    public var id: String?
    public var type: String?
    /** Gets or sets the server identifier. */
    public var serverId: String?
    /** Gets or sets the external identifier. */
    public var externalId: String?
    /** Gets or sets the channel id of the recording. */
    public var channelId: String?
    /** Gets or sets the external channel identifier. */
    public var externalChannelId: String?
    /** Gets or sets the channel name of the recording. */
    public var channelName: String?
    public var channelPrimaryImageTag: String?
    /** Gets or sets the program identifier. */
    public var programId: String?
    /** Gets or sets the external program identifier. */
    public var externalProgramId: String?
    /** Gets or sets the name of the recording. */
    public var name: String?
    /** Gets or sets the description of the recording. */
    public var overview: String?
    /** Gets or sets the start date of the recording, in UTC. */
    public var startDate: Date?
    /** Gets or sets the end date of the recording, in UTC. */
    public var endDate: Date?
    /** Gets or sets the name of the service. */
    public var serviceName: String?
    /** Gets or sets the priority. */
    public var priority: Int?
    /** Gets or sets the pre padding seconds. */
    public var prePaddingSeconds: Int?
    /** Gets or sets the post padding seconds. */
    public var postPaddingSeconds: Int?
    /** Gets or sets a value indicating whether this instance is pre padding required. */
    public var isPrePaddingRequired: Bool?
    /** Gets or sets the Id of the Parent that has a backdrop if the item does not have one. */
    public var parentBackdropItemId: String?
    /** Gets or sets the parent backdrop image tags. */
    public var parentBackdropImageTags: [String]?
    /** Gets or sets a value indicating whether this instance is post padding required. */
    public var isPostPaddingRequired: Bool?
    public var keepUntil: KeepUntil?
    /** Gets or sets a value indicating whether [record any time]. */
    public var recordAnyTime: Bool?
    public var skipEpisodesInLibrary: Bool?
    /** Gets or sets a value indicating whether [record any channel]. */
    public var recordAnyChannel: Bool?
    public var keepUpTo: Int?
    /** Gets or sets a value indicating whether [record new only]. */
    public var recordNewOnly: Bool?
    /** Gets or sets the days. */
    public var days: [DayOfWeek]?
    /** Gets or sets the day pattern. */
    public var dayPattern: DayPattern?
    /** Gets or sets the image tags. */
    public var imageTags: [String: String]?
    /** Gets or sets the parent thumb item id. */
    public var parentThumbItemId: String?
    /** Gets or sets the parent thumb image tag. */
    public var parentThumbImageTag: String?
    /** Gets or sets the parent primary image item identifier. */
    public var parentPrimaryImageItemId: String?
    /** Gets or sets the parent primary image tag. */
    public var parentPrimaryImageTag: String?

    public init(id: String? = nil, type: String? = nil, serverId: String? = nil, externalId: String? = nil, channelId: String? = nil, externalChannelId: String? = nil, channelName: String? = nil, channelPrimaryImageTag: String? = nil, programId: String? = nil, externalProgramId: String? = nil, name: String? = nil, overview: String? = nil, startDate: Date? = nil, endDate: Date? = nil, serviceName: String? = nil, priority: Int? = nil, prePaddingSeconds: Int? = nil, postPaddingSeconds: Int? = nil, isPrePaddingRequired: Bool? = nil, parentBackdropItemId: String? = nil, parentBackdropImageTags: [String]? = nil, isPostPaddingRequired: Bool? = nil, keepUntil: KeepUntil? = nil, recordAnyTime: Bool? = nil, skipEpisodesInLibrary: Bool? = nil, recordAnyChannel: Bool? = nil, keepUpTo: Int? = nil, recordNewOnly: Bool? = nil, days: [DayOfWeek]? = nil, dayPattern: DayPattern? = nil, imageTags: [String: String]? = nil, parentThumbItemId: String? = nil, parentThumbImageTag: String? = nil, parentPrimaryImageItemId: String? = nil, parentPrimaryImageTag: String? = nil) {
        self.id = id
        self.type = type
        self.serverId = serverId
        self.externalId = externalId
        self.channelId = channelId
        self.externalChannelId = externalChannelId
        self.channelName = channelName
        self.channelPrimaryImageTag = channelPrimaryImageTag
        self.programId = programId
        self.externalProgramId = externalProgramId
        self.name = name
        self.overview = overview
        self.startDate = startDate
        self.endDate = endDate
        self.serviceName = serviceName
        self.priority = priority
        self.prePaddingSeconds = prePaddingSeconds
        self.postPaddingSeconds = postPaddingSeconds
        self.isPrePaddingRequired = isPrePaddingRequired
        self.parentBackdropItemId = parentBackdropItemId
        self.parentBackdropImageTags = parentBackdropImageTags
        self.isPostPaddingRequired = isPostPaddingRequired
        self.keepUntil = keepUntil
        self.recordAnyTime = recordAnyTime
        self.skipEpisodesInLibrary = skipEpisodesInLibrary
        self.recordAnyChannel = recordAnyChannel
        self.keepUpTo = keepUpTo
        self.recordNewOnly = recordNewOnly
        self.days = days
        self.dayPattern = dayPattern
        self.imageTags = imageTags
        self.parentThumbItemId = parentThumbItemId
        self.parentThumbImageTag = parentThumbImageTag
        self.parentPrimaryImageItemId = parentPrimaryImageItemId
        self.parentPrimaryImageTag = parentPrimaryImageTag
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case type = "Type"
        case serverId = "ServerId"
        case externalId = "ExternalId"
        case channelId = "ChannelId"
        case externalChannelId = "ExternalChannelId"
        case channelName = "ChannelName"
        case channelPrimaryImageTag = "ChannelPrimaryImageTag"
        case programId = "ProgramId"
        case externalProgramId = "ExternalProgramId"
        case name = "Name"
        case overview = "Overview"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case serviceName = "ServiceName"
        case priority = "Priority"
        case prePaddingSeconds = "PrePaddingSeconds"
        case postPaddingSeconds = "PostPaddingSeconds"
        case isPrePaddingRequired = "IsPrePaddingRequired"
        case parentBackdropItemId = "ParentBackdropItemId"
        case parentBackdropImageTags = "ParentBackdropImageTags"
        case isPostPaddingRequired = "IsPostPaddingRequired"
        case keepUntil = "KeepUntil"
        case recordAnyTime = "RecordAnyTime"
        case skipEpisodesInLibrary = "SkipEpisodesInLibrary"
        case recordAnyChannel = "RecordAnyChannel"
        case keepUpTo = "KeepUpTo"
        case recordNewOnly = "RecordNewOnly"
        case days = "Days"
        case dayPattern = "DayPattern"
        case imageTags = "ImageTags"
        case parentThumbItemId = "ParentThumbItemId"
        case parentThumbImageTag = "ParentThumbImageTag"
        case parentPrimaryImageItemId = "ParentPrimaryImageItemId"
        case parentPrimaryImageTag = "ParentPrimaryImageTag"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(serverId, forKey: .serverId)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(channelId, forKey: .channelId)
        try container.encodeIfPresent(externalChannelId, forKey: .externalChannelId)
        try container.encodeIfPresent(channelName, forKey: .channelName)
        try container.encodeIfPresent(channelPrimaryImageTag, forKey: .channelPrimaryImageTag)
        try container.encodeIfPresent(programId, forKey: .programId)
        try container.encodeIfPresent(externalProgramId, forKey: .externalProgramId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(overview, forKey: .overview)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(serviceName, forKey: .serviceName)
        try container.encodeIfPresent(priority, forKey: .priority)
        try container.encodeIfPresent(prePaddingSeconds, forKey: .prePaddingSeconds)
        try container.encodeIfPresent(postPaddingSeconds, forKey: .postPaddingSeconds)
        try container.encodeIfPresent(isPrePaddingRequired, forKey: .isPrePaddingRequired)
        try container.encodeIfPresent(parentBackdropItemId, forKey: .parentBackdropItemId)
        try container.encodeIfPresent(parentBackdropImageTags, forKey: .parentBackdropImageTags)
        try container.encodeIfPresent(isPostPaddingRequired, forKey: .isPostPaddingRequired)
        try container.encodeIfPresent(keepUntil, forKey: .keepUntil)
        try container.encodeIfPresent(recordAnyTime, forKey: .recordAnyTime)
        try container.encodeIfPresent(skipEpisodesInLibrary, forKey: .skipEpisodesInLibrary)
        try container.encodeIfPresent(recordAnyChannel, forKey: .recordAnyChannel)
        try container.encodeIfPresent(keepUpTo, forKey: .keepUpTo)
        try container.encodeIfPresent(recordNewOnly, forKey: .recordNewOnly)
        try container.encodeIfPresent(days, forKey: .days)
        try container.encodeIfPresent(dayPattern, forKey: .dayPattern)
        try container.encodeIfPresent(imageTags, forKey: .imageTags)
        try container.encodeIfPresent(parentThumbItemId, forKey: .parentThumbItemId)
        try container.encodeIfPresent(parentThumbImageTag, forKey: .parentThumbImageTag)
        try container.encodeIfPresent(parentPrimaryImageItemId, forKey: .parentPrimaryImageItemId)
        try container.encodeIfPresent(parentPrimaryImageTag, forKey: .parentPrimaryImageTag)
    }
}

