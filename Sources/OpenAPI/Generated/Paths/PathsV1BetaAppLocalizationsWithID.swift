// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaAppLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/betaAppLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaAppLocalizationResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?

			public enum FieldsBetaAppLocalizations: String, Codable, CaseIterable {
				case app
				case description
				case feedbackEmail
				case locale
				case marketingURL = "marketingUrl"
				case privacyPolicyURL = "privacyPolicyUrl"
				case tvOsPrivacyPolicy
			}

			public enum Include: String, Codable, CaseIterable {
				case app
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

			public init(fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) {
				self.fieldsBetaAppLocalizations = fieldsBetaAppLocalizations
				self.include = include
				self.fieldsApps = fieldsApps
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.BetaAppLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.BetaAppLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
