// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.Builds.WithID.Relationships {
	public var appEncryptionDeclaration: AppEncryptionDeclaration {
		AppEncryptionDeclaration(path: path + "/appEncryptionDeclaration")
	}

	public struct AppEncryptionDeclaration {
		/// Path: `/v1/builds/{id}/relationships/appEncryptionDeclaration`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.BuildAppEncryptionDeclarationLinkageResponse> {
			.get(path)
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.BuildAppEncryptionDeclarationLinkageRequest) -> Request<Void> {
			.patch(path, body: body)
		}
	}
}
