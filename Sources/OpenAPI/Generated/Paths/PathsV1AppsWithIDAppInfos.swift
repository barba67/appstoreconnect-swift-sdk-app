// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var appInfos: AppInfos {
		AppInfos(path: path + "/appInfos")
	}

	public struct AppInfos {
		/// Path: `/v1/apps/{id}/appInfos`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppInfosResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?
			public var fieldsAppInfos: [FieldsAppInfos]?
			public var fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?
			public var fieldsAppCategories: [FieldsAppCategories]?
			public var fieldsApps: [FieldsApps]?
			public var limit: Int?
			public var limitAppInfoLocalizations: Int?
			public var include: [Include]?

			public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
				case alcoholTobaccoOrDrugUseOrReferences
				case contests
				case gambling
				case gamblingAndContests
				case gamblingSimulated
				case horrorOrFearThemes
				case kidsAgeBand
				case matureOrSuggestiveThemes
				case medicalOrTreatmentInformation
				case profanityOrCrudeHumor
				case seventeenPlus
				case sexualContentGraphicAndNudity
				case sexualContentOrNudity
				case unrestrictedWebAccess
				case violenceCartoonOrFantasy
				case violenceRealistic
				case violenceRealisticProlongedGraphicOrSadistic
			}

			public enum FieldsAppInfos: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appInfoLocalizations
				case appStoreAgeRating
				case appStoreState
				case brazilAgeRating
				case brazilAgeRatingV2
				case kidsAgeBand
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable {
				case appInfo
				case locale
				case name
				case privacyChoicesURL = "privacyChoicesUrl"
				case privacyPolicyText
				case privacyPolicyURL = "privacyPolicyUrl"
				case subtitle
			}

			public enum FieldsAppCategories: String, Codable, CaseIterable {
				case parent
				case platforms
				case subcategories
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

			public enum Include: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appInfoLocalizations
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public init(fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, fieldsAppCategories: [FieldsAppCategories]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, limitAppInfoLocalizations: Int? = nil, include: [Include]? = nil) {
				self.fieldsAgeRatingDeclarations = fieldsAgeRatingDeclarations
				self.fieldsAppInfos = fieldsAppInfos
				self.fieldsAppInfoLocalizations = fieldsAppInfoLocalizations
				self.fieldsAppCategories = fieldsAppCategories
				self.fieldsApps = fieldsApps
				self.limit = limit
				self.limitAppInfoLocalizations = limitAppInfoLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]")
				encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
				encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
				encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitAppInfoLocalizations, forKey: "limit[appInfoLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
