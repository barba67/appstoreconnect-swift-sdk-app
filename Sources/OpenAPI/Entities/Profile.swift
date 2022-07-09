// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct Profile: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case profiles
	}

	public struct Attributes: Codable {
		public var name: String?
		public var platform: BundleIDPlatform?
		public var profileType: ProfileType?
		public var profileState: ProfileState?
		public var profileContent: String?
		public var uuid: String?
		public var createdDate: Date?
		public var expirationDate: Date?

		public enum ProfileType: String, Codable, CaseIterable {
			case iosAppDevelopment = "IOS_APP_DEVELOPMENT"
			case iosAppStore = "IOS_APP_STORE"
			case iosAppAdhoc = "IOS_APP_ADHOC"
			case iosAppInhouse = "IOS_APP_INHOUSE"
			case macAppDevelopment = "MAC_APP_DEVELOPMENT"
			case macAppStore = "MAC_APP_STORE"
			case macAppDirect = "MAC_APP_DIRECT"
			case tvosAppDevelopment = "TVOS_APP_DEVELOPMENT"
			case tvosAppStore = "TVOS_APP_STORE"
			case tvosAppAdhoc = "TVOS_APP_ADHOC"
			case tvosAppInhouse = "TVOS_APP_INHOUSE"
			case macCatalystAppDevelopment = "MAC_CATALYST_APP_DEVELOPMENT"
			case macCatalystAppStore = "MAC_CATALYST_APP_STORE"
			case macCatalystAppDirect = "MAC_CATALYST_APP_DIRECT"
		}

		public enum ProfileState: String, Codable, CaseIterable {
			case active = "ACTIVE"
			case invalid = "INVALID"
		}

		public init(name: String? = nil, platform: BundleIDPlatform? = nil, profileType: ProfileType? = nil, profileState: ProfileState? = nil, profileContent: String? = nil, uuid: String? = nil, createdDate: Date? = nil, expirationDate: Date? = nil) {
			self.name = name
			self.platform = platform
			self.profileType = profileType
			self.profileState = profileState
			self.profileContent = profileContent
			self.uuid = uuid
			self.createdDate = createdDate
			self.expirationDate = expirationDate
		}
	}

	public struct Relationships: Codable {
		public var bundleID: BundleID?
		public var devices: Devices?
		public var certificates: Certificates?

		public struct BundleID: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case bundleIDs = "bundleIds"
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}
		}

		public struct Devices: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case devices
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}
		}

		public struct Certificates: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case certificates
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}
		}

		public init(bundleID: BundleID? = nil, devices: Devices? = nil, certificates: Certificates? = nil) {
			self.bundleID = bundleID
			self.devices = devices
			self.certificates = certificates
		}

		private enum CodingKeys: String, CodingKey {
			case bundleID = "bundleId"
			case devices
			case certificates
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}
}
