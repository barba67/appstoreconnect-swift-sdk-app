// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionGroups: SubscriptionGroups {
		SubscriptionGroups(path: path + "/subscriptionGroups")
	}

	public struct SubscriptionGroups {
		/// Path: `/v1/subscriptionGroups`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SubscriptionGroupCreateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupResponse> {
			.post(path, body: body)
		}
	}
}
