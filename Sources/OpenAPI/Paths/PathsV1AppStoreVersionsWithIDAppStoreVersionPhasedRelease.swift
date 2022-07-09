// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.AppStoreVersions.WithID {
	public var appStoreVersionPhasedRelease: AppStoreVersionPhasedRelease {
		AppStoreVersionPhasedRelease(path: path + "/appStoreVersionPhasedRelease")
	}

	public struct AppStoreVersionPhasedRelease {
		/// Path: `/v1/appStoreVersions/{id}/appStoreVersionPhasedRelease`
		public let path: String

		public func get(fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionPhasedReleaseResponse> {
			.get(path, query: makeGetQuery(fieldsAppStoreVersionPhasedReleases))
		}

		private func makeGetQuery(_ fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppStoreVersionPhasedReleases, forKey: "fields[appStoreVersionPhasedReleases]", explode: false)
			return encoder.items
		}

		public enum FieldsAppStoreVersionPhasedReleases: String, Codable, CaseIterable {
			case appStoreVersion
			case currentDayNumber
			case phasedReleaseState
			case startDate
			case totalPauseDuration
		}
	}
}
