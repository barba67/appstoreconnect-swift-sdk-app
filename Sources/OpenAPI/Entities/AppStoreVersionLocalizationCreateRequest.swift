// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppStoreVersionLocalizationCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appStoreVersionLocalizations
		}

		public struct Attributes: Codable {
			public var description: String?
			public var locale: String
			public var keywords: String?
			public var marketingURL: URL?
			public var promotionalText: String?
			public var supportURL: URL?
			public var whatsNew: String?

			public init(description: String? = nil, locale: String, keywords: String? = nil, marketingURL: URL? = nil, promotionalText: String? = nil, supportURL: URL? = nil, whatsNew: String? = nil) {
				self.description = description
				self.locale = locale
				self.keywords = keywords
				self.marketingURL = marketingURL
				self.promotionalText = promotionalText
				self.supportURL = supportURL
				self.whatsNew = whatsNew
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.description = try values.decodeIfPresent(String.self, forKey: "description")
				self.locale = try values.decode(String.self, forKey: "locale")
				self.keywords = try values.decodeIfPresent(String.self, forKey: "keywords")
				self.marketingURL = try values.decodeIfPresent(URL.self, forKey: "marketingUrl")
				self.promotionalText = try values.decodeIfPresent(String.self, forKey: "promotionalText")
				self.supportURL = try values.decodeIfPresent(URL.self, forKey: "supportUrl")
				self.whatsNew = try values.decodeIfPresent(String.self, forKey: "whatsNew")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(description, forKey: "description")
				try values.encode(locale, forKey: "locale")
				try values.encodeIfPresent(keywords, forKey: "keywords")
				try values.encodeIfPresent(marketingURL, forKey: "marketingUrl")
				try values.encodeIfPresent(promotionalText, forKey: "promotionalText")
				try values.encodeIfPresent(supportURL, forKey: "supportUrl")
				try values.encodeIfPresent(whatsNew, forKey: "whatsNew")
			}
		}

		public struct Relationships: Codable {
			public var appStoreVersion: AppStoreVersion

			public struct AppStoreVersion: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appStoreVersions
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

			public init(appStoreVersion: AppStoreVersion) {
				self.appStoreVersion = appStoreVersion
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.appStoreVersion = try values.decode(AppStoreVersion.self, forKey: "appStoreVersion")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(appStoreVersion, forKey: "appStoreVersion")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
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
