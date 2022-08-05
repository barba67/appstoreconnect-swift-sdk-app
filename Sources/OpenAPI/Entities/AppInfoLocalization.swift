// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppInfoLocalization: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case appInfoLocalizations
	}

	public struct Attributes: Codable {
		public var locale: String?
		public var name: String?
		public var subtitle: String?
		public var privacyPolicyURL: String?
		public var privacyChoicesURL: String?
		public var privacyPolicyText: String?

		public init(locale: String? = nil, name: String? = nil, subtitle: String? = nil, privacyPolicyURL: String? = nil, privacyChoicesURL: String? = nil, privacyPolicyText: String? = nil) {
			self.locale = locale
			self.name = name
			self.subtitle = subtitle
			self.privacyPolicyURL = privacyPolicyURL
			self.privacyChoicesURL = privacyChoicesURL
			self.privacyPolicyText = privacyPolicyText
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.locale = try values.decodeIfPresent(String.self, forKey: "locale")
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
			self.subtitle = try values.decodeIfPresent(String.self, forKey: "subtitle")
			self.privacyPolicyURL = try values.decodeIfPresent(String.self, forKey: "privacyPolicyUrl")
			self.privacyChoicesURL = try values.decodeIfPresent(String.self, forKey: "privacyChoicesUrl")
			self.privacyPolicyText = try values.decodeIfPresent(String.self, forKey: "privacyPolicyText")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(locale, forKey: "locale")
			try values.encodeIfPresent(name, forKey: "name")
			try values.encodeIfPresent(subtitle, forKey: "subtitle")
			try values.encodeIfPresent(privacyPolicyURL, forKey: "privacyPolicyUrl")
			try values.encodeIfPresent(privacyChoicesURL, forKey: "privacyChoicesUrl")
			try values.encodeIfPresent(privacyPolicyText, forKey: "privacyPolicyText")
		}
	}

	public struct Relationships: Codable {
		public var appInfo: AppInfo?

		public struct AppInfo: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appInfos
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(appInfo: AppInfo? = nil) {
			self.appInfo = appInfo
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appInfo = try values.decodeIfPresent(AppInfo.self, forKey: "appInfo")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appInfo, forKey: "appInfo")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encode(links, forKey: "links")
	}
}
