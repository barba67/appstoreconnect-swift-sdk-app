// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiXcodeVersions.WithID.Relationships {
	public var macOsVersions: MacOsVersions {
		MacOsVersions(path: path + "/macOsVersions")
	}

	public struct MacOsVersions {
		/// Path: `/v1/ciXcodeVersions/{id}/relationships/macOsVersions`
		public let path: String
	}
}
