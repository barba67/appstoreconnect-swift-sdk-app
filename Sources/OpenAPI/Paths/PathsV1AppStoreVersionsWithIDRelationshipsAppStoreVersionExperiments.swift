// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID.Relationships {
	public var appStoreVersionExperiments: AppStoreVersionExperiments {
		AppStoreVersionExperiments(path: path + "/appStoreVersionExperiments")
	}

	public struct AppStoreVersionExperiments {
		/// Path: `/v1/appStoreVersions/{id}/relationships/appStoreVersionExperiments`
		public let path: String
	}
}
