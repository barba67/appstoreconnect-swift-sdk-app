// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPriceSchedules.WithID.Relationships {
	public var baseTerritory: BaseTerritory {
		BaseTerritory(path: path + "/baseTerritory")
	}

	public struct BaseTerritory {
		/// Path: `/v1/appPriceSchedules/{id}/relationships/baseTerritory`
		public let path: String
	}
}
