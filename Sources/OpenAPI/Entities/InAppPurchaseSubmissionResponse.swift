// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct InAppPurchaseSubmissionResponse: Codable {
	/// InAppPurchaseSubmission
	public var data: InAppPurchaseSubmission
	public var included: [InAppPurchaseV2]?
	public var links: DocumentLinks

	public init(data: InAppPurchaseSubmission, included: [InAppPurchaseV2]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
