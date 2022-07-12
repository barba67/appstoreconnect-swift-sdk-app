// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.CiMacOsVersions.WithID {
	public var xcodeVersions: XcodeVersions {
		XcodeVersions(path: path + "/xcodeVersions")
	}

	public struct XcodeVersions {
		/// Path: `/v1/ciMacOsVersions/{id}/xcodeVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiXcodeVersionsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
			public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
			public var limit: Int?
			public var limitMacOsVersions: Int?
			public var include: [Include]?

			public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
				case macOsVersions
				case name
				case testDestinations
				case version
			}

			public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
				case name
				case version
				case xcodeVersions
			}

			public enum Include: String, Codable, CaseIterable {
				case macOsVersions
			}

			public init(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limit: Int? = nil, limitMacOsVersions: Int? = nil, include: [Include]? = nil) {
				self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
				self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
				self.limit = limit
				self.limitMacOsVersions = limitMacOsVersions
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
				encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitMacOsVersions, forKey: "limit[macOsVersions]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
