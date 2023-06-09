// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var subscriptionGracePeriod: SubscriptionGracePeriod {
		SubscriptionGracePeriod(path: path + "/subscriptionGracePeriod")
	}

	public struct SubscriptionGracePeriod {
		/// Path: `/v1/apps/{id}/relationships/subscriptionGracePeriod`
		public let path: String
	}
}
