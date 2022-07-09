// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.AppCustomProductPageVersions.WithID.Relationships {
	public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations {
		AppCustomProductPageLocalizations(path: path + "/appCustomProductPageLocalizations")
	}

	public struct AppCustomProductPageLocalizations {
		/// Path: `/v1/appCustomProductPageVersions/{id}/relationships/appCustomProductPageLocalizations`
		public let path: String
	}
}
