// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID.Relationships {
	public var appClipDefaultExperience: AppClipDefaultExperience {
		AppClipDefaultExperience(path: path + "/appClipDefaultExperience")
	}

	public struct AppClipDefaultExperience {
		/// Path: `/v1/appStoreVersions/{id}/relationships/appClipDefaultExperience`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.AppStoreVersionAppClipDefaultExperienceLinkageResponse> {
			.get(path)
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionAppClipDefaultExperienceLinkageRequest) -> Request<Void> {
			.patch(path, body: body)
		}
	}
}
