// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionOfferCodeCustomCode: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionOfferCodeCustomCodes
	}

	public struct Attributes: Codable {
		public var customCode: String?
		public var numberOfCodes: Int?
		public var createdDate: Date?
		public var expirationDate: String?
		public var isActive: Bool?

		public init(customCode: String? = nil, numberOfCodes: Int? = nil, createdDate: Date? = nil, expirationDate: String? = nil, isActive: Bool? = nil) {
			self.customCode = customCode
			self.numberOfCodes = numberOfCodes
			self.createdDate = createdDate
			self.expirationDate = expirationDate
			self.isActive = isActive
		}

		private enum CodingKeys: String, CodingKey {
			case customCode
			case numberOfCodes
			case createdDate
			case expirationDate
			case isActive = "active"
		}
	}

	public struct Relationships: Codable {
		public var offerCode: OfferCode?

		public struct OfferCode: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionOfferCodes
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}
		}

		public init(offerCode: OfferCode? = nil) {
			self.offerCode = offerCode
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}
}
