// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct CiBuildRunCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes?
		public var relationships: Relationships?

		public enum `Type`: String, Codable, CaseIterable {
			case ciBuildRuns
		}

		public struct Attributes: Codable {
			public var isClean: Bool?

			public init(isClean: Bool? = nil) {
				self.isClean = isClean
			}

			private enum CodingKeys: String, CodingKey {
				case isClean = "clean"
			}
		}

		public struct Relationships: Codable {
			public var buildRun: BuildRun?
			public var workflow: Workflow?
			public var sourceBranchOrTag: SourceBranchOrTag?
			public var pullRequest: PullRequest?

			public struct BuildRun: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case ciBuildRuns
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

			public struct Workflow: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case ciWorkflows
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

			public struct SourceBranchOrTag: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case scmGitReferences
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

			public struct PullRequest: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case scmPullRequests
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

			public init(buildRun: BuildRun? = nil, workflow: Workflow? = nil, sourceBranchOrTag: SourceBranchOrTag? = nil, pullRequest: PullRequest? = nil) {
				self.buildRun = buildRun
				self.workflow = workflow
				self.sourceBranchOrTag = sourceBranchOrTag
				self.pullRequest = pullRequest
			}
		}

		public init(type: `Type`, attributes: Attributes? = nil, relationships: Relationships? = nil) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
