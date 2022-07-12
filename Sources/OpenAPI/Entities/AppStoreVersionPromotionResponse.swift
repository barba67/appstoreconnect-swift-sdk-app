// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppStoreVersionPromotionResponse: Codable {
	/// AppStoreVersionPromotion
	public var data: AppStoreVersionPromotion
	public var links: DocumentLinks

	public init(data: AppStoreVersionPromotion, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}
