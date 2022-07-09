// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.BetaAppClipInvocationLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/betaAppClipInvocationLocalizations/{id}`
		public let path: String

		public func patch(_ body: AppStoreConnect_Swift_SDK.BetaAppClipInvocationLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.BetaAppClipInvocationLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
