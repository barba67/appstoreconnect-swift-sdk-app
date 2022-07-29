// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct ScmProviderType: Codable {
	public var kind: Kind?
	public var displayName: String?
	public var isOnPremise: Bool?

	public enum Kind: String, Codable, CaseIterable {
		case bitbucketCloud = "BITBUCKET_CLOUD"
		case bitbucketServer = "BITBUCKET_SERVER"
		case githubCloud = "GITHUB_CLOUD"
		case githubEnterprise = "GITHUB_ENTERPRISE"
		case gitlabCloud = "GITLAB_CLOUD"
		case gitlabSelfManaged = "GITLAB_SELF_MANAGED"
	}

	public init(kind: Kind? = nil, displayName: String? = nil, isOnPremise: Bool? = nil) {
		self.kind = kind
		self.displayName = displayName
		self.isOnPremise = isOnPremise
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.kind = try values.decodeIfPresent(Kind.self, forKey: "kind")
		self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
		self.isOnPremise = try values.decodeIfPresent(Bool.self, forKey: "isOnPremise")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(kind, forKey: "kind")
		try values.encodeIfPresent(displayName, forKey: "displayName")
		try values.encodeIfPresent(isOnPremise, forKey: "isOnPremise")
	}
}
