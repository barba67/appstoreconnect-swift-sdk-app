// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersionExperimentTreatmentLocalizations.WithID.Relationships {
	public var appPreviewSets: AppPreviewSets {
		AppPreviewSets(path: path + "/appPreviewSets")
	}

	public struct AppPreviewSets {
		/// Path: `/v1/appStoreVersionExperimentTreatmentLocalizations/{id}/relationships/appPreviewSets`
		public let path: String
	}
}
