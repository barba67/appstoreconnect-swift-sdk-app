// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaGroup: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case betaGroups
	}

	public struct Attributes: Codable {
		public var name: String?
		public var createdDate: Date?
		public var isInternalGroup: Bool?
		public var hasAccessToAllBuilds: Bool?
		public var isPublicLinkEnabled: Bool?
		public var publicLinkID: String?
		public var isPublicLinkLimitEnabled: Bool?
		public var publicLinkLimit: Int?
		public var publicLink: String?
		public var isFeedbackEnabled: Bool?
		public var isIosBuildsAvailableForAppleSiliconMac: Bool?

		public init(name: String? = nil, createdDate: Date? = nil, isInternalGroup: Bool? = nil, hasAccessToAllBuilds: Bool? = nil, isPublicLinkEnabled: Bool? = nil, publicLinkID: String? = nil, isPublicLinkLimitEnabled: Bool? = nil, publicLinkLimit: Int? = nil, publicLink: String? = nil, isFeedbackEnabled: Bool? = nil, isIosBuildsAvailableForAppleSiliconMac: Bool? = nil) {
			self.name = name
			self.createdDate = createdDate
			self.isInternalGroup = isInternalGroup
			self.hasAccessToAllBuilds = hasAccessToAllBuilds
			self.isPublicLinkEnabled = isPublicLinkEnabled
			self.publicLinkID = publicLinkID
			self.isPublicLinkLimitEnabled = isPublicLinkLimitEnabled
			self.publicLinkLimit = publicLinkLimit
			self.publicLink = publicLink
			self.isFeedbackEnabled = isFeedbackEnabled
			self.isIosBuildsAvailableForAppleSiliconMac = isIosBuildsAvailableForAppleSiliconMac
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
			self.createdDate = try values.decodeIfPresent(Date.self, forKey: "createdDate")
			self.isInternalGroup = try values.decodeIfPresent(Bool.self, forKey: "isInternalGroup")
			self.hasAccessToAllBuilds = try values.decodeIfPresent(Bool.self, forKey: "hasAccessToAllBuilds")
			self.isPublicLinkEnabled = try values.decodeIfPresent(Bool.self, forKey: "publicLinkEnabled")
			self.publicLinkID = try values.decodeIfPresent(String.self, forKey: "publicLinkId")
			self.isPublicLinkLimitEnabled = try values.decodeIfPresent(Bool.self, forKey: "publicLinkLimitEnabled")
			self.publicLinkLimit = try values.decodeIfPresent(Int.self, forKey: "publicLinkLimit")
			self.publicLink = try values.decodeIfPresent(String.self, forKey: "publicLink")
			self.isFeedbackEnabled = try values.decodeIfPresent(Bool.self, forKey: "feedbackEnabled")
			self.isIosBuildsAvailableForAppleSiliconMac = try values.decodeIfPresent(Bool.self, forKey: "iosBuildsAvailableForAppleSiliconMac")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(name, forKey: "name")
			try values.encodeIfPresent(createdDate, forKey: "createdDate")
			try values.encodeIfPresent(isInternalGroup, forKey: "isInternalGroup")
			try values.encodeIfPresent(hasAccessToAllBuilds, forKey: "hasAccessToAllBuilds")
			try values.encodeIfPresent(isPublicLinkEnabled, forKey: "publicLinkEnabled")
			try values.encodeIfPresent(publicLinkID, forKey: "publicLinkId")
			try values.encodeIfPresent(isPublicLinkLimitEnabled, forKey: "publicLinkLimitEnabled")
			try values.encodeIfPresent(publicLinkLimit, forKey: "publicLinkLimit")
			try values.encodeIfPresent(publicLink, forKey: "publicLink")
			try values.encodeIfPresent(isFeedbackEnabled, forKey: "feedbackEnabled")
			try values.encodeIfPresent(isIosBuildsAvailableForAppleSiliconMac, forKey: "iosBuildsAvailableForAppleSiliconMac")
		}
	}

	public struct Relationships: Codable {
		public var app: App?
		public var builds: Builds?
		public var betaTesters: BetaTesters?

		public struct App: Codable {
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
					case apps
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

		public struct Builds: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

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

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case builds
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

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct BetaTesters: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

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

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case betaTesters
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

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(app: App? = nil, builds: Builds? = nil, betaTesters: BetaTesters? = nil) {
			self.app = app
			self.builds = builds
			self.betaTesters = betaTesters
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.app = try values.decodeIfPresent(App.self, forKey: "app")
			self.builds = try values.decodeIfPresent(Builds.self, forKey: "builds")
			self.betaTesters = try values.decodeIfPresent(BetaTesters.self, forKey: "betaTesters")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(app, forKey: "app")
			try values.encodeIfPresent(builds, forKey: "builds")
			try values.encodeIfPresent(betaTesters, forKey: "betaTesters")
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
