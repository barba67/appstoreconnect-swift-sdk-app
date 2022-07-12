// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.AppStoreVersions.WithID.Relationships {
	public var appStoreVersionSubmission: AppStoreVersionSubmission {
		AppStoreVersionSubmission(path: path + "/appStoreVersionSubmission")
	}

	public struct AppStoreVersionSubmission {
		/// Path: `/v1/appStoreVersions/{id}/relationships/appStoreVersionSubmission`
		public let path: String
	}
}
