// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppAvailabilities.WithID.Relationships {
	public var availableTerritories: AvailableTerritories {
		AvailableTerritories(path: path + "/availableTerritories")
	}

	public struct AvailableTerritories {
		/// Path: `/v1/appAvailabilities/{id}/relationships/availableTerritories`
		public let path: String
	}
}
