// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPriceTiers.WithID.Relationships {
	public var pricePoints: PricePoints {
		PricePoints(path: path + "/pricePoints")
	}

	public struct PricePoints {
		/// Path: `/v1/appPriceTiers/{id}/relationships/pricePoints`
		public let path: String
	}
}
