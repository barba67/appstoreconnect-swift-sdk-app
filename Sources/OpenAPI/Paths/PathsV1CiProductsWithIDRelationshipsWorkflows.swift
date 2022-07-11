// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.CiProducts.WithID.Relationships {
	public var workflows: Workflows {
		Workflows(path: path + "/workflows")
	}

	public struct Workflows {
		/// Path: `/v1/ciProducts/{id}/relationships/workflows`
		public let path: String
	}
}
