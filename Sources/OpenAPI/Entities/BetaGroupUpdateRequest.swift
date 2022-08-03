// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaGroupUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case betaGroups
		}

		public struct Attributes: Codable {
			public var name: String?
			public var isPublicLinkEnabled: Bool?
			public var isPublicLinkLimitEnabled: Bool?
			public var publicLinkLimit: Int?
			public var isFeedbackEnabled: Bool?
			public var isIosBuildsAvailableForAppleSiliconMac: Bool?

			public init(name: String? = nil, isPublicLinkEnabled: Bool? = nil, isPublicLinkLimitEnabled: Bool? = nil, publicLinkLimit: Int? = nil, isFeedbackEnabled: Bool? = nil, isIosBuildsAvailableForAppleSiliconMac: Bool? = nil) {
				self.name = name
				self.isPublicLinkEnabled = isPublicLinkEnabled
				self.isPublicLinkLimitEnabled = isPublicLinkLimitEnabled
				self.publicLinkLimit = publicLinkLimit
				self.isFeedbackEnabled = isFeedbackEnabled
				self.isIosBuildsAvailableForAppleSiliconMac = isIosBuildsAvailableForAppleSiliconMac
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.name = try values.decodeIfPresent(String.self, forKey: "name")
				self.isPublicLinkEnabled = try values.decodeIfPresent(Bool.self, forKey: "publicLinkEnabled")
				self.isPublicLinkLimitEnabled = try values.decodeIfPresent(Bool.self, forKey: "publicLinkLimitEnabled")
				self.publicLinkLimit = try values.decodeIfPresent(Int.self, forKey: "publicLinkLimit")
				self.isFeedbackEnabled = try values.decodeIfPresent(Bool.self, forKey: "feedbackEnabled")
				self.isIosBuildsAvailableForAppleSiliconMac = try values.decodeIfPresent(Bool.self, forKey: "iosBuildsAvailableForAppleSiliconMac")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(name, forKey: "name")
				try values.encodeIfPresent(isPublicLinkEnabled, forKey: "publicLinkEnabled")
				try values.encodeIfPresent(isPublicLinkLimitEnabled, forKey: "publicLinkLimitEnabled")
				try values.encodeIfPresent(publicLinkLimit, forKey: "publicLinkLimit")
				try values.encodeIfPresent(isFeedbackEnabled, forKey: "feedbackEnabled")
				try values.encodeIfPresent(isIosBuildsAvailableForAppleSiliconMac, forKey: "iosBuildsAvailableForAppleSiliconMac")
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
			try values.encodeIfPresent(attributes, forKey: "attributes")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
