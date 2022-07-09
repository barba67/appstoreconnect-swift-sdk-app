// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint {
	public static var betaTesters: BetaTesters {
		BetaTesters(path: "/v1/betaTesters")
	}

	public struct BetaTesters {
		/// Path: `/v1/betaTesters`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaTestersResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterEmail: [String]?
			public var filterFirstName: [String]?
			public var filterInviteType: [FilterInviteType]?
			public var filterLastName: [String]?
			public var filterApps: [String]?
			public var filterBetaGroups: [String]?
			public var filterBuilds: [String]?
			public var filterID: [String]?
			public var sort: [Sort]?
			public var fieldsBetaTesters: [FieldsBetaTesters]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var fieldsBetaGroups: [FieldsBetaGroups]?
			public var limitApps: Int?
			public var limitBetaGroups: Int?
			public var limitBuilds: Int?

			public enum FilterInviteType: String, Codable, CaseIterable {
				case email = "EMAIL"
				case publicLink = "PUBLIC_LINK"
			}

			public enum Sort: String, Codable, CaseIterable {
				case email
				case minusemail = "-email"
				case firstName
				case minusfirstName = "-firstName"
				case inviteType
				case minusinviteType = "-inviteType"
				case lastName
				case minuslastName = "-lastName"
			}

			public enum FieldsBetaTesters: String, Codable, CaseIterable {
				case apps
				case betaGroups
				case builds
				case email
				case firstName
				case inviteType
				case lastName
			}

			public enum Include: String, Codable, CaseIterable {
				case apps
				case betaGroups
				case builds
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case endUserLicenseAgreement
				case gameCenterEnabledVersions
				case inAppPurchases
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case reviewSubmissions
				case sku
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildAudienceType
				case buildBetaDetail
				case buildBundles
				case computedMinMacOsVersion
				case diagnosticSignatures
				case expirationDate
				case expired
				case iconAssetToken
				case icons
				case individualTesters
				case lsMinimumSystemVersion
				case minOsVersion
				case perfPowerMetrics
				case preReleaseVersion
				case processingState
				case uploadedDate
				case usesNonExemptEncryption
				case version
			}

			public enum FieldsBetaGroups: String, Codable, CaseIterable {
				case app
				case betaTesters
				case builds
				case createdDate
				case feedbackEnabled
				case hasAccessToAllBuilds
				case iosBuildsAvailableForAppleSiliconMac
				case isInternalGroup
				case name
				case publicLink
				case publicLinkEnabled
				case publicLinkID = "publicLinkId"
				case publicLinkLimit
				case publicLinkLimitEnabled
			}

			public init(filterEmail: [String]? = nil, filterFirstName: [String]? = nil, filterInviteType: [FilterInviteType]? = nil, filterLastName: [String]? = nil, filterApps: [String]? = nil, filterBetaGroups: [String]? = nil, filterBuilds: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsBetaTesters: [FieldsBetaTesters]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, limitApps: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil) {
				self.filterEmail = filterEmail
				self.filterFirstName = filterFirstName
				self.filterInviteType = filterInviteType
				self.filterLastName = filterLastName
				self.filterApps = filterApps
				self.filterBetaGroups = filterBetaGroups
				self.filterBuilds = filterBuilds
				self.filterID = filterID
				self.sort = sort
				self.fieldsBetaTesters = fieldsBetaTesters
				self.limit = limit
				self.include = include
				self.fieldsApps = fieldsApps
				self.fieldsBuilds = fieldsBuilds
				self.fieldsBetaGroups = fieldsBetaGroups
				self.limitApps = limitApps
				self.limitBetaGroups = limitBetaGroups
				self.limitBuilds = limitBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterEmail, forKey: "filter[email]")
				encoder.encode(filterFirstName, forKey: "filter[firstName]")
				encoder.encode(filterInviteType, forKey: "filter[inviteType]")
				encoder.encode(filterLastName, forKey: "filter[lastName]")
				encoder.encode(filterApps, forKey: "filter[apps]")
				encoder.encode(filterBetaGroups, forKey: "filter[betaGroups]")
				encoder.encode(filterBuilds, forKey: "filter[builds]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
				encoder.encode(limitApps, forKey: "limit[apps]")
				encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.BetaTesterCreateRequest) -> Request<AppStoreConnect_Swift_SDK.BetaTesterResponse> {
			.post(path, body: body)
		}
	}
}
