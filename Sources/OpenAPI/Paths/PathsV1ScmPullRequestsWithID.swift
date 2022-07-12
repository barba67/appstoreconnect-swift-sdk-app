// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.ScmPullRequests {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/scmPullRequests/{id}`
		public let path: String

		public func get(fieldsScmPullRequests: [FieldsScmPullRequests]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.ScmPullRequestResponse> {
			.get(path, query: makeGetQuery(fieldsScmPullRequests, include))
		}

		private func makeGetQuery(_ fieldsScmPullRequests: [FieldsScmPullRequests]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsScmPullRequests, forKey: "fields[scmPullRequests]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsScmPullRequests: String, Codable, CaseIterable {
			case destinationBranchName
			case destinationRepositoryName
			case destinationRepositoryOwner
			case isClosed
			case isCrossRepository
			case number
			case repository
			case sourceBranchName
			case sourceRepositoryName
			case sourceRepositoryOwner
			case title
			case webURL = "webUrl"
		}

		public enum Include: String, Codable, CaseIterable {
			case repository
		}
	}
}
