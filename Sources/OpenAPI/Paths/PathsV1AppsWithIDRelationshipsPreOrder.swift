// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.Apps.WithID.Relationships {
	public var preOrder: PreOrder {
		PreOrder(path: path + "/preOrder")
	}

	public struct PreOrder {
		/// Path: `/v1/apps/{id}/relationships/preOrder`
		public let path: String
	}
}
