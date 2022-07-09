// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.CiProducts.WithID {
	public var primaryRepositories: PrimaryRepositories {
		PrimaryRepositories(path: path + "/primaryRepositories")
	}

	public struct PrimaryRepositories {
		/// Path: `/v1/ciProducts/{id}/primaryRepositories`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ScmRepositoriesResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterID: [String]?
			public var fieldsScmGitReferences: [FieldsScmGitReferences]?
			public var fieldsScmProviders: [FieldsScmProviders]?
			public var fieldsScmRepositories: [FieldsScmRepositories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsScmGitReferences: String, Codable, CaseIterable {
				case canonicalName
				case isDeleted
				case kind
				case name
				case repository
			}

			public enum FieldsScmProviders: String, Codable, CaseIterable {
				case repositories
				case scmProviderType
				case url
			}

			public enum FieldsScmRepositories: String, Codable, CaseIterable {
				case defaultBranch
				case gitReferences
				case httpCloneURL = "httpCloneUrl"
				case lastAccessedDate
				case ownerName
				case pullRequests
				case repositoryName
				case scmProvider
				case sshCloneURL = "sshCloneUrl"
			}

			public enum Include: String, Codable, CaseIterable {
				case defaultBranch
				case scmProvider
			}

			public init(filterID: [String]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, fieldsScmProviders: [FieldsScmProviders]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterID = filterID
				self.fieldsScmGitReferences = fieldsScmGitReferences
				self.fieldsScmProviders = fieldsScmProviders
				self.fieldsScmRepositories = fieldsScmRepositories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
				encoder.encode(fieldsScmProviders, forKey: "fields[scmProviders]")
				encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
