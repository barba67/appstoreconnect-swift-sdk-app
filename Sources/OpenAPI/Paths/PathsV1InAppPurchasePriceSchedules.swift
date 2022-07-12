// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var inAppPurchasePriceSchedules: InAppPurchasePriceSchedules {
		InAppPurchasePriceSchedules(path: path + "/inAppPurchasePriceSchedules")
	}

	public struct InAppPurchasePriceSchedules {
		/// Path: `/v1/inAppPurchasePriceSchedules`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.InAppPurchasePriceScheduleCreateRequest) -> Request<AppStoreConnect_Swift_SDK.InAppPurchasePriceScheduleResponse> {
			.post(path, body: body)
		}
	}
}
