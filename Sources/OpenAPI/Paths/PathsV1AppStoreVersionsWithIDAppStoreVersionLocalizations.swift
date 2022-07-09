// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.AppStoreVersions.WithID {
	public var appStoreVersionLocalizations: AppStoreVersionLocalizations {
		AppStoreVersionLocalizations(path: path + "/appStoreVersionLocalizations")
	}

	public struct AppStoreVersionLocalizations {
		/// Path: `/v1/appStoreVersions/{id}/appStoreVersionLocalizations`
		public let path: String

		public func get(fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionLocalizationsResponse> {
			.get(path, query: makeGetQuery(fieldsAppStoreVersionLocalizations, limit))
		}

		private func makeGetQuery(_ fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsAppStoreVersionLocalizations: String, Codable, CaseIterable {
			case appPreviewSets
			case appScreenshotSets
			case appStoreVersion
			case description
			case keywords
			case locale
			case marketingURL = "marketingUrl"
			case promotionalText
			case supportURL = "supportUrl"
			case whatsNew
		}
	}
}
