//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ContainerProfileModel: APIModel {

    public var conditions: [ProfileConditionModel]?

    public var container: String?

    public var type: DlnaProfileType?

    public init(conditions: [ProfileConditionModel]? = nil, container: String? = nil, type: DlnaProfileType? = nil) {
        self.conditions = conditions
        self.container = container
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: StringCodingKey.self)

        conditions = try decoderContainer.decodeArrayIfPresent("Conditions")
        container = try decoderContainer.decodeIfPresent("Container")
        type = try decoderContainer.decodeIfPresent("Type")
    }

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StringCodingKey.self)

        try encoderContainer.encodeIfPresent(conditions, forKey: "Conditions")
        try encoderContainer.encodeIfPresent(container, forKey: "Container")
        try encoderContainer.encodeIfPresent(type, forKey: "Type")
    }

}
