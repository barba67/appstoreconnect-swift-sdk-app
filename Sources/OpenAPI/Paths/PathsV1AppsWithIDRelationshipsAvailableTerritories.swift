// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.Apps.WithID.Relationships {
	public var availableTerritories: AvailableTerritories {
		AvailableTerritories(path: path + "/availableTerritories")
	}

	public struct AvailableTerritories {
		/// Path: `/v1/apps/{id}/relationships/availableTerritories`
		public let path: String
	}
}
