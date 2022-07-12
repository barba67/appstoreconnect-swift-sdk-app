// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.AppStoreVersionLocalizations.WithID.Relationships {
	public var appPreviewSets: AppPreviewSets {
		AppPreviewSets(path: path + "/appPreviewSets")
	}

	public struct AppPreviewSets {
		/// Path: `/v1/appStoreVersionLocalizations/{id}/relationships/appPreviewSets`
		public let path: String
	}
}
