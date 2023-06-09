// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var inAppPurchaseLocalizations: InAppPurchaseLocalizations {
		InAppPurchaseLocalizations(path: path + "/inAppPurchaseLocalizations")
	}

	public struct InAppPurchaseLocalizations {
		/// Path: `/v1/inAppPurchaseLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.InAppPurchaseLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.InAppPurchaseLocalizationResponse> {
			.post(path, body: body)
		}
	}
}
