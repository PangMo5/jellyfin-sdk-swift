//
// LibraryUpdateInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class LibraryUpdateInfo. */
public struct LibraryUpdateInfo: Codable, JSONEncodable, Hashable {

    /** Gets or sets the folders added to. */
    public var foldersAddedTo: [String]?
    /** Gets or sets the folders removed from. */
    public var foldersRemovedFrom: [String]?
    /** Gets or sets the items added. */
    public var itemsAdded: [String]?
    /** Gets or sets the items removed. */
    public var itemsRemoved: [String]?
    /** Gets or sets the items updated. */
    public var itemsUpdated: [String]?
    public var collectionFolders: [String]?
    public var isEmpty: Bool?

    public init(foldersAddedTo: [String]? = nil, foldersRemovedFrom: [String]? = nil, itemsAdded: [String]? = nil, itemsRemoved: [String]? = nil, itemsUpdated: [String]? = nil, collectionFolders: [String]? = nil, isEmpty: Bool? = nil) {
        self.foldersAddedTo = foldersAddedTo
        self.foldersRemovedFrom = foldersRemovedFrom
        self.itemsAdded = itemsAdded
        self.itemsRemoved = itemsRemoved
        self.itemsUpdated = itemsUpdated
        self.collectionFolders = collectionFolders
        self.isEmpty = isEmpty
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case foldersAddedTo = "FoldersAddedTo"
        case foldersRemovedFrom = "FoldersRemovedFrom"
        case itemsAdded = "ItemsAdded"
        case itemsRemoved = "ItemsRemoved"
        case itemsUpdated = "ItemsUpdated"
        case collectionFolders = "CollectionFolders"
        case isEmpty = "IsEmpty"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(foldersAddedTo, forKey: .foldersAddedTo)
        try container.encodeIfPresent(foldersRemovedFrom, forKey: .foldersRemovedFrom)
        try container.encodeIfPresent(itemsAdded, forKey: .itemsAdded)
        try container.encodeIfPresent(itemsRemoved, forKey: .itemsRemoved)
        try container.encodeIfPresent(itemsUpdated, forKey: .itemsUpdated)
        try container.encodeIfPresent(collectionFolders, forKey: .collectionFolders)
        try container.encodeIfPresent(isEmpty, forKey: .isEmpty)
    }
}

