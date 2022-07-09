// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint {
	public static var appPreviews: AppPreviews {
		AppPreviews(path: "/v1/appPreviews")
	}

	public struct AppPreviews {
		/// Path: `/v1/appPreviews`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppPreviewCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppPreviewResponse> {
			.post(path, body: body)
		}
	}
}
