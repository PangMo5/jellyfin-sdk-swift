//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ProfileConditionModel: APIModel {

    public var condition: ProfileConditionType?

    public var isRequired: Bool?

    public var property: ProfileConditionValue?

    public var value: String?

    public init(condition: ProfileConditionType? = nil, isRequired: Bool? = nil, property: ProfileConditionValue? = nil, value: String? = nil) {
        self.condition = condition
        self.isRequired = isRequired
        self.property = property
        self.value = value
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        condition = try decoderContainer.decodeIfPresent("Condition")
        isRequired = try decoderContainer.decodeIfPresent("IsRequired")
        property = try decoderContainer.decodeIfPresent("Property")
        value = try decoderContainer.decodeIfPresent("Value")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(condition, forKey: "Condition")
        try encoderContainer.encodeIfPresent(isRequired, forKey: "IsRequired")
        try encoderContainer.encodeIfPresent(property, forKey: "Property")
        try encoderContainer.encodeIfPresent(value, forKey: "Value")
    }

}
