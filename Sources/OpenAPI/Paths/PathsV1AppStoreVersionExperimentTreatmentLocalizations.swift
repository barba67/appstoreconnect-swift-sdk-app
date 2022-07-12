// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appStoreVersionExperimentTreatmentLocalizations: AppStoreVersionExperimentTreatmentLocalizations {
		AppStoreVersionExperimentTreatmentLocalizations(path: path + "/appStoreVersionExperimentTreatmentLocalizations")
	}

	public struct AppStoreVersionExperimentTreatmentLocalizations {
		/// Path: `/v1/appStoreVersionExperimentTreatmentLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionExperimentTreatmentLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentTreatmentLocalizationResponse> {
			.post(path, body: body)
		}
	}
}
