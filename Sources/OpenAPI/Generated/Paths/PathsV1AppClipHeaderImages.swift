// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appClipHeaderImages: AppClipHeaderImages {
		AppClipHeaderImages(path: path + "/appClipHeaderImages")
	}

	public struct AppClipHeaderImages {
		/// Path: `/v1/appClipHeaderImages`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppClipHeaderImageCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppClipHeaderImageResponse> {
			.post(path, body: body)
		}
	}
}
