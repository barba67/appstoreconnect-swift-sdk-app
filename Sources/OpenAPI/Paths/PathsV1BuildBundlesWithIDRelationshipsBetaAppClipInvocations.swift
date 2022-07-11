// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.BuildBundles.WithID.Relationships {
	public var betaAppClipInvocations: BetaAppClipInvocations {
		BetaAppClipInvocations(path: path + "/betaAppClipInvocations")
	}

	public struct BetaAppClipInvocations {
		/// Path: `/v1/buildBundles/{id}/relationships/betaAppClipInvocations`
		public let path: String
	}
}
