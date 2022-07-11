// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.Apps.WithID.Relationships {
	public var inAppPurchases: InAppPurchases {
		InAppPurchases(path: path + "/inAppPurchases")
	}

	public struct InAppPurchases {
		/// Path: `/v1/apps/{id}/relationships/inAppPurchases`
		public let path: String
	}
}
