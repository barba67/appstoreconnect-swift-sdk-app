// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.Builds.WithID.Relationships {
	public var buildBetaDetail: BuildBetaDetail {
		BuildBetaDetail(path: path + "/buildBetaDetail")
	}

	public struct BuildBetaDetail {
		/// Path: `/v1/builds/{id}/relationships/buildBetaDetail`
		public let path: String
	}
}
