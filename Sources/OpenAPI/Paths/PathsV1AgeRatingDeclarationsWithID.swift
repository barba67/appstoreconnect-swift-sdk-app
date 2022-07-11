// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.AgeRatingDeclarations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/ageRatingDeclarations/{id}`
		public let path: String

		public func patch(_ body: AppStoreConnect_Swift_SDK.AgeRatingDeclarationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AgeRatingDeclarationResponse> {
			.patch(path, body: body)
		}
	}
}
