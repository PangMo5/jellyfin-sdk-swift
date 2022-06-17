//
// AddListingProviderRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AddListingProviderRequest: Codable, Hashable {

    public var id: String?
    public var type: String?
    public var username: String?
    public var password: String?
    public var listingsId: String?
    public var zipCode: String?
    public var country: String?
    public var path: String?
    public var enabledTuners: [String]?
    public var enableAllTuners: Bool?
    public var newsCategories: [String]?
    public var sportsCategories: [String]?
    public var kidsCategories: [String]?
    public var movieCategories: [String]?
    public var channelMappings: [NameValuePair]?
    public var moviePrefix: String?
    public var preferredLanguage: String?
    public var userAgent: String?

    public init(id: String? = nil, type: String? = nil, username: String? = nil, password: String? = nil, listingsId: String? = nil, zipCode: String? = nil, country: String? = nil, path: String? = nil, enabledTuners: [String]? = nil, enableAllTuners: Bool? = nil, newsCategories: [String]? = nil, sportsCategories: [String]? = nil, kidsCategories: [String]? = nil, movieCategories: [String]? = nil, channelMappings: [NameValuePair]? = nil, moviePrefix: String? = nil, preferredLanguage: String? = nil, userAgent: String? = nil) {
        self.id = id
        self.type = type
        self.username = username
        self.password = password
        self.listingsId = listingsId
        self.zipCode = zipCode
        self.country = country
        self.path = path
        self.enabledTuners = enabledTuners
        self.enableAllTuners = enableAllTuners
        self.newsCategories = newsCategories
        self.sportsCategories = sportsCategories
        self.kidsCategories = kidsCategories
        self.movieCategories = movieCategories
        self.channelMappings = channelMappings
        self.moviePrefix = moviePrefix
        self.preferredLanguage = preferredLanguage
        self.userAgent = userAgent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case type = "Type"
        case username = "Username"
        case password = "Password"
        case listingsId = "ListingsId"
        case zipCode = "ZipCode"
        case country = "Country"
        case path = "Path"
        case enabledTuners = "EnabledTuners"
        case enableAllTuners = "EnableAllTuners"
        case newsCategories = "NewsCategories"
        case sportsCategories = "SportsCategories"
        case kidsCategories = "KidsCategories"
        case movieCategories = "MovieCategories"
        case channelMappings = "ChannelMappings"
        case moviePrefix = "MoviePrefix"
        case preferredLanguage = "PreferredLanguage"
        case userAgent = "UserAgent"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(type, forKey: .type)
        try encoderContainer.encodeIfPresent(username, forKey: .username)
        try encoderContainer.encodeIfPresent(password, forKey: .password)
        try encoderContainer.encodeIfPresent(listingsId, forKey: .listingsId)
        try encoderContainer.encodeIfPresent(zipCode, forKey: .zipCode)
        try encoderContainer.encodeIfPresent(country, forKey: .country)
        try encoderContainer.encodeIfPresent(path, forKey: .path)
        try encoderContainer.encodeIfPresent(enabledTuners, forKey: .enabledTuners)
        try encoderContainer.encodeIfPresent(enableAllTuners, forKey: .enableAllTuners)
        try encoderContainer.encodeIfPresent(newsCategories, forKey: .newsCategories)
        try encoderContainer.encodeIfPresent(sportsCategories, forKey: .sportsCategories)
        try encoderContainer.encodeIfPresent(kidsCategories, forKey: .kidsCategories)
        try encoderContainer.encodeIfPresent(movieCategories, forKey: .movieCategories)
        try encoderContainer.encodeIfPresent(channelMappings, forKey: .channelMappings)
        try encoderContainer.encodeIfPresent(moviePrefix, forKey: .moviePrefix)
        try encoderContainer.encodeIfPresent(preferredLanguage, forKey: .preferredLanguage)
        try encoderContainer.encodeIfPresent(userAgent, forKey: .userAgent)
    }
}
