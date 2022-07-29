// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionPromotionalOfferInlineCreate: Codable {
	public var type: `Type`
	public var id: String?
	public var attributes: Attributes
	public var relationships: Relationships?

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionPromotionalOffers
	}

	public struct Attributes: Codable {
		public var name: String
		public var offerCode: String
		public var duration: SubscriptionOfferDuration
		public var offerMode: SubscriptionOfferMode
		public var numberOfPeriods: Int

		public init(name: String, offerCode: String, duration: SubscriptionOfferDuration, offerMode: SubscriptionOfferMode, numberOfPeriods: Int) {
			self.name = name
			self.offerCode = offerCode
			self.duration = duration
			self.offerMode = offerMode
			self.numberOfPeriods = numberOfPeriods
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.name = try values.decode(String.self, forKey: "name")
			self.offerCode = try values.decode(String.self, forKey: "offerCode")
			self.duration = try values.decode(SubscriptionOfferDuration.self, forKey: "duration")
			self.offerMode = try values.decode(SubscriptionOfferMode.self, forKey: "offerMode")
			self.numberOfPeriods = try values.decode(Int.self, forKey: "numberOfPeriods")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(name, forKey: "name")
			try values.encode(offerCode, forKey: "offerCode")
			try values.encode(duration, forKey: "duration")
			try values.encode(offerMode, forKey: "offerMode")
			try values.encode(numberOfPeriods, forKey: "numberOfPeriods")
		}
	}

	public struct Relationships: Codable {
		public var subscription: Subscription?
		public var prices: Prices?

		public struct Subscription: Codable {
			public var data: Data?

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

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Prices: Codable {
			public var data: [Datum]?

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionPromotionalOfferPrices
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

			public init(data: [Datum]? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(subscription: Subscription? = nil, prices: Prices? = nil) {
			self.subscription = subscription
			self.prices = prices
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.subscription = try values.decodeIfPresent(Subscription.self, forKey: "subscription")
			self.prices = try values.decodeIfPresent(Prices.self, forKey: "prices")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(subscription, forKey: "subscription")
			try values.encodeIfPresent(prices, forKey: "prices")
		}
	}

	public init(type: `Type`, id: String? = nil, attributes: Attributes, relationships: Relationships? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decodeIfPresent(String.self, forKey: "id")
		self.attributes = try values.decode(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encodeIfPresent(id, forKey: "id")
		try values.encode(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
	}
}
