// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfos.WithID {
	public var secondaryCategory: SecondaryCategory {
		SecondaryCategory(path: path + "/secondaryCategory")
	}

	public struct SecondaryCategory {
		/// Path: `/v1/appInfos/{id}/secondaryCategory`
		public let path: String

		public func get(fieldsAppCategories: [FieldsAppCategories]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppCategoryResponse> {
			.get(path, query: makeGetQuery(fieldsAppCategories))
		}

		private func makeGetQuery(_ fieldsAppCategories: [FieldsAppCategories]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]", explode: false)
			return encoder.items
		}

		public enum FieldsAppCategories: String, Codable, CaseIterable {
			case parent
			case platforms
			case subcategories
		}
	}
}
