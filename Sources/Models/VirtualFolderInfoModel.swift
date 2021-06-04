//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Used to hold information about a user's list of configured virtual folders. */
public struct VirtualFolderInfoModel: APIModel {

    public var collectionType: CollectionTypeOptions?

    /** Gets or sets the item identifier. */
    public var itemId: String?

    public var libraryOptions: LibraryOptionsModel?

    /** Gets or sets the locations. */
    public var locations: [String]?

    /** Gets or sets the name. */
    public var name: String?

    /** Gets or sets the primary image item identifier. */
    public var primaryImageItemId: String?

    public var refreshProgress: Double?

    public var refreshStatus: String?

    public init(collectionType: CollectionTypeOptions? = nil, itemId: String? = nil, libraryOptions: LibraryOptionsModel? = nil, locations: [String]? = nil, name: String? = nil, primaryImageItemId: String? = nil, refreshProgress: Double? = nil, refreshStatus: String? = nil) {
        self.collectionType = collectionType
        self.itemId = itemId
        self.libraryOptions = libraryOptions
        self.locations = locations
        self.name = name
        self.primaryImageItemId = primaryImageItemId
        self.refreshProgress = refreshProgress
        self.refreshStatus = refreshStatus
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        collectionType = try decoderContainer.decodeIfPresent("CollectionType")
        itemId = try decoderContainer.decodeIfPresent("ItemId")
        libraryOptions = try decoderContainer.decodeIfPresent("LibraryOptions")
        locations = try decoderContainer.decodeArrayIfPresent("Locations")
        name = try decoderContainer.decodeIfPresent("Name")
        primaryImageItemId = try decoderContainer.decodeIfPresent("PrimaryImageItemId")
        refreshProgress = try decoderContainer.decodeIfPresent("RefreshProgress")
        refreshStatus = try decoderContainer.decodeIfPresent("RefreshStatus")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(collectionType, forKey: "CollectionType")
        try encoderContainer.encodeIfPresent(itemId, forKey: "ItemId")
        try encoderContainer.encodeIfPresent(libraryOptions, forKey: "LibraryOptions")
        try encoderContainer.encodeIfPresent(locations, forKey: "Locations")
        try encoderContainer.encodeIfPresent(name, forKey: "Name")
        try encoderContainer.encodeIfPresent(primaryImageItemId, forKey: "PrimaryImageItemId")
        try encoderContainer.encodeIfPresent(refreshProgress, forKey: "RefreshProgress")
        try encoderContainer.encodeIfPresent(refreshStatus, forKey: "RefreshStatus")
    }

}