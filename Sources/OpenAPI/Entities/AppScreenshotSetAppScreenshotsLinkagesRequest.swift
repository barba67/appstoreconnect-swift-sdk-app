// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppScreenshotSetAppScreenshotsLinkagesRequest: Codable {
	public var data: [Datum]

	public struct Datum: Codable {
		public var type: `Type`
		public var id: String

		public enum `Type`: String, Codable, CaseIterable {
			case appScreenshots
		}

		public init(type: `Type`, id: String) {
			self.type = type
			self.id = id
		}
	}

	public init(data: [Datum]) {
		self.data = data
	}
}
