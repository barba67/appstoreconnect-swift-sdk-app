// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appStoreVersionPromotions: AppStoreVersionPromotions {
		AppStoreVersionPromotions(path: path + "/appStoreVersionPromotions")
	}

	public struct AppStoreVersionPromotions {
		/// Path: `/v1/appStoreVersionPromotions`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionPromotionCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionPromotionResponse> {
			.post(path, body: body)
		}
	}
}