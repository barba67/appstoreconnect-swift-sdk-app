// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipDefaultExperienceLocalizations.WithID {
	public var relationships: Relationships {
		Relationships(path: path + "/relationships")
	}

	public struct Relationships {
		/// Path: `/v1/appClipDefaultExperienceLocalizations/{id}/relationships`
		public let path: String
	}
}
