//
// UtcTimeResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class UtcTimeResponse. */
public struct UtcTimeResponse: Codable, JSONEncodable, Hashable {

    /** Gets the UTC time when request has been received. */
    public var requestReceptionTime: Date?
    /** Gets the UTC time when response has been sent. */
    public var responseTransmissionTime: Date?

    public init(requestReceptionTime: Date? = nil, responseTransmissionTime: Date? = nil) {
        self.requestReceptionTime = requestReceptionTime
        self.responseTransmissionTime = responseTransmissionTime
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requestReceptionTime = "RequestReceptionTime"
        case responseTransmissionTime = "ResponseTransmissionTime"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(requestReceptionTime, forKey: .requestReceptionTime)
        try container.encodeIfPresent(responseTransmissionTime, forKey: .responseTransmissionTime)
    }
}

