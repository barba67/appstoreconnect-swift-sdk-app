// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2 {
	public var inAppPurchases: InAppPurchases {
		InAppPurchases(path: path + "/inAppPurchases")
	}

	public struct InAppPurchases {
		/// Path: `/v2/inAppPurchases`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.InAppPurchaseV2CreateRequest) -> Request<AppStoreConnect_Swift_SDK.InAppPurchaseV2Response> {
			.post(path, body: body)
		}
	}
}
