// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionSubmission: Codable {
	public var type: `Type`
	public var id: String
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionSubmissions
	}

	public struct Relationships: Codable {
		public var subscription: Subscription?

		public struct Subscription: Codable {
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
					case subscriptions
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

		public init(subscription: Subscription? = nil) {
			self.subscription = subscription
		}
	}

	public init(type: `Type`, id: String, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.relationships = relationships
		self.links = links
	}
}
