// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID.Relationships {
	public var betaBuildLocalizations: BetaBuildLocalizations {
		BetaBuildLocalizations(path: path + "/betaBuildLocalizations")
	}

	public struct BetaBuildLocalizations {
		/// Path: `/v1/builds/{id}/relationships/betaBuildLocalizations`
		public let path: String
	}
}
