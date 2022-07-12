// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionGroups {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionGroups/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?
			public var include: [Include]?
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?
			public var limitSubscriptionGroupLocalizations: Int?
			public var limitSubscriptions: Int?

			public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
				case app
				case referenceName
				case subscriptionGroupLocalizations
				case subscriptions
			}

			public enum Include: String, Codable, CaseIterable {
				case subscriptionGroupLocalizations
				case subscriptions
			}

			public enum FieldsSubscriptions: String, Codable, CaseIterable {
				case appStoreReviewScreenshot
				case availableInAllTerritories
				case familySharable
				case group
				case groupLevel
				case introductoryOffers
				case name
				case offerCodes
				case pricePoints
				case prices
				case productID = "productId"
				case promotedPurchase
				case promotionalOffers
				case reviewNote
				case state
				case subscriptionLocalizations
				case subscriptionPeriod
			}

			public enum FieldsSubscriptionGroupLocalizations: String, Codable, CaseIterable {
				case customAppName
				case locale
				case name
				case state
				case subscriptionGroup
			}

			public init(fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, include: [Include]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, limitSubscriptionGroupLocalizations: Int? = nil, limitSubscriptions: Int? = nil) {
				self.fieldsSubscriptionGroups = fieldsSubscriptionGroups
				self.include = include
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsSubscriptionGroupLocalizations = fieldsSubscriptionGroupLocalizations
				self.limitSubscriptionGroupLocalizations = limitSubscriptionGroupLocalizations
				self.limitSubscriptions = limitSubscriptions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
				encoder.encode(limitSubscriptionGroupLocalizations, forKey: "limit[subscriptionGroupLocalizations]")
				encoder.encode(limitSubscriptions, forKey: "limit[subscriptions]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.SubscriptionGroupUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
