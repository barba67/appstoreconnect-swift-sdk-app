// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint {
	public static var betaLicenseAgreements: BetaLicenseAgreements {
		BetaLicenseAgreements(path: "/v1/betaLicenseAgreements")
	}

	public struct BetaLicenseAgreements {
		/// Path: `/v1/betaLicenseAgreements`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaLicenseAgreementsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterApp: [String]?
			public var fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?

			public enum FieldsBetaLicenseAgreements: String, Codable, CaseIterable {
				case agreementText
				case app
			}

			public enum Include: String, Codable, CaseIterable {
				case app
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

			public init(filterApp: [String]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) {
				self.filterApp = filterApp
				self.fieldsBetaLicenseAgreements = fieldsBetaLicenseAgreements
				self.limit = limit
				self.include = include
				self.fieldsApps = fieldsApps
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				return encoder.items
			}
		}
	}
}
