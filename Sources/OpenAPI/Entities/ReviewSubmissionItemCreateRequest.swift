// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct ReviewSubmissionItemCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case reviewSubmissionItems
		}

		public struct Relationships: Codable {
			public var reviewSubmission: ReviewSubmission
			public var appStoreVersion: AppStoreVersion?
			public var appCustomProductPageVersion: AppCustomProductPageVersion?
			public var appStoreVersionExperiment: AppStoreVersionExperiment?
			public var appEvent: AppEvent?

			public struct ReviewSubmission: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case reviewSubmissions
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data) {
					self.data = data
				}
			}

			public struct AppStoreVersion: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appStoreVersions
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data? = nil) {
					self.data = data
				}
			}

			public struct AppCustomProductPageVersion: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appCustomProductPageVersions
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data? = nil) {
					self.data = data
				}
			}

			public struct AppStoreVersionExperiment: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appStoreVersionExperiments
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data? = nil) {
					self.data = data
				}
			}

			public struct AppEvent: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appEvents
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data? = nil) {
					self.data = data
				}
			}

			public init(reviewSubmission: ReviewSubmission, appStoreVersion: AppStoreVersion? = nil, appCustomProductPageVersion: AppCustomProductPageVersion? = nil, appStoreVersionExperiment: AppStoreVersionExperiment? = nil, appEvent: AppEvent? = nil) {
				self.reviewSubmission = reviewSubmission
				self.appStoreVersion = appStoreVersion
				self.appCustomProductPageVersion = appCustomProductPageVersion
				self.appStoreVersionExperiment = appStoreVersionExperiment
				self.appEvent = appEvent
			}
		}

		public init(type: `Type`, relationships: Relationships) {
			self.type = type
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}