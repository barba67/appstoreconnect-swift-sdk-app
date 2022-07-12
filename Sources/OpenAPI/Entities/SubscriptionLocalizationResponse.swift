// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionLocalizationResponse: Codable {
	/// SubscriptionLocalization
	public var data: SubscriptionLocalization
	public var included: [Subscription]?
	public var links: DocumentLinks

	public init(data: SubscriptionLocalization, included: [Subscription]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
