// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.InAppPurchasePriceSchedules {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/inAppPurchasePriceSchedules/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchasePriceScheduleResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]?
			public var include: [Include]?
			public var fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]?
			public var limitManualPrices: Int?

			public enum FieldsInAppPurchasePriceSchedules: String, Codable, CaseIterable {
				case inAppPurchase
				case manualPrices
			}

			public enum Include: String, Codable, CaseIterable {
				case inAppPurchase
				case manualPrices
			}

			public enum FieldsInAppPurchasePrices: String, Codable, CaseIterable {
				case inAppPurchasePricePoint
				case inAppPurchaseV2
				case startDate
				case territory
			}

			public init(fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]? = nil, include: [Include]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]? = nil, limitManualPrices: Int? = nil) {
				self.fieldsInAppPurchasePriceSchedules = fieldsInAppPurchasePriceSchedules
				self.include = include
				self.fieldsInAppPurchasePrices = fieldsInAppPurchasePrices
				self.limitManualPrices = limitManualPrices
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsInAppPurchasePriceSchedules, forKey: "fields[inAppPurchasePriceSchedules]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsInAppPurchasePrices, forKey: "fields[inAppPurchasePrices]")
				encoder.encode(limitManualPrices, forKey: "limit[manualPrices]")
				return encoder.items
			}
		}
	}
}
