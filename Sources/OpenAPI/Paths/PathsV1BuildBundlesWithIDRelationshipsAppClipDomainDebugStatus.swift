// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.BuildBundles.WithID.Relationships {
	public var appClipDomainDebugStatus: AppClipDomainDebugStatus {
		AppClipDomainDebugStatus(path: path + "/appClipDomainDebugStatus")
	}

	public struct AppClipDomainDebugStatus {
		/// Path: `/v1/buildBundles/{id}/relationships/appClipDomainDebugStatus`
		public let path: String
	}
}
