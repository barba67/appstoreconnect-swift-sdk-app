// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var userInvitations: UserInvitations {
		UserInvitations(path: path + "/userInvitations")
	}

	public struct UserInvitations {
		/// Path: `/v1/userInvitations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.UserInvitationsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterEmail: [String]?
			public var filterRoles: [FilterRoles]?
			public var filterVisibleApps: [String]?
			public var sort: [Sort]?
			public var fieldsUserInvitations: [FieldsUserInvitations]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?
			public var limitVisibleApps: Int?

			public enum FilterRoles: String, Codable, CaseIterable {
				case admin = "ADMIN"
				case finance = "FINANCE"
				case accountHolder = "ACCOUNT_HOLDER"
				case sales = "SALES"
				case marketing = "MARKETING"
				case appManager = "APP_MANAGER"
				case developer = "DEVELOPER"
				case accessToReports = "ACCESS_TO_REPORTS"
				case customerSupport = "CUSTOMER_SUPPORT"
				case imageManager = "IMAGE_MANAGER"
				case createApps = "CREATE_APPS"
				case cloudManagedDeveloperID = "CLOUD_MANAGED_DEVELOPER_ID"
				case cloudManagedAppDistribution = "CLOUD_MANAGED_APP_DISTRIBUTION"
			}

			public enum Sort: String, Codable, CaseIterable {
				case email
				case minusemail = "-email"
				case lastName
				case minuslastName = "-lastName"
			}

			public enum FieldsUserInvitations: String, Codable, CaseIterable {
				case allAppsVisible
				case email
				case expirationDate
				case firstName
				case lastName
				case provisioningAllowed
				case roles
				case visibleApps
			}

			public enum Include: String, Codable, CaseIterable {
				case visibleApps
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
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
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public init(filterEmail: [String]? = nil, filterRoles: [FilterRoles]? = nil, filterVisibleApps: [String]? = nil, sort: [Sort]? = nil, fieldsUserInvitations: [FieldsUserInvitations]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, limitVisibleApps: Int? = nil) {
				self.filterEmail = filterEmail
				self.filterRoles = filterRoles
				self.filterVisibleApps = filterVisibleApps
				self.sort = sort
				self.fieldsUserInvitations = fieldsUserInvitations
				self.limit = limit
				self.include = include
				self.fieldsApps = fieldsApps
				self.limitVisibleApps = limitVisibleApps
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterEmail, forKey: "filter[email]")
				encoder.encode(filterRoles, forKey: "filter[roles]")
				encoder.encode(filterVisibleApps, forKey: "filter[visibleApps]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsUserInvitations, forKey: "fields[userInvitations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limitVisibleApps, forKey: "limit[visibleApps]")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.UserInvitationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.UserInvitationResponse> {
			.post(path, body: body)
		}
	}
}
