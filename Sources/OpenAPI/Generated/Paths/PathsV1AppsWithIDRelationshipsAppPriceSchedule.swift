// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var appPriceSchedule: AppPriceSchedule {
		AppPriceSchedule(path: path + "/appPriceSchedule")
	}

	public struct AppPriceSchedule {
		/// Path: `/v1/apps/{id}/relationships/appPriceSchedule`
		public let path: String
	}
}
