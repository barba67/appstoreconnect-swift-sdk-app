// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEventVideoClips: AppEventVideoClips {
		AppEventVideoClips(path: path + "/appEventVideoClips")
	}

	public struct AppEventVideoClips {
		/// Path: `/v1/appEventVideoClips`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppEventVideoClipCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEventVideoClipResponse> {
			.post(path, body: body)
		}
	}
}