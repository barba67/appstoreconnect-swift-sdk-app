// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appPriceSchedules: AppPriceSchedules {
		AppPriceSchedules(path: path + "/appPriceSchedules")
	}

	public struct AppPriceSchedules {
		/// Path: `/v1/appPriceSchedules`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppPriceScheduleCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppPriceScheduleResponse> {
			.post(path, body: body)
		}
	}
}
