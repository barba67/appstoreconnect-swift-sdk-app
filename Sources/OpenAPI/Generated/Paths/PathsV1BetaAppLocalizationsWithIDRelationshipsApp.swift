// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaAppLocalizations.WithID.Relationships {
	public var app: App {
		App(path: path + "/app")
	}

	public struct App {
		/// Path: `/v1/betaAppLocalizations/{id}/relationships/app`
		public let path: String
	}
}
