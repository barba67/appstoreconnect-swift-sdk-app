// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.BuildBetaDetails {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/buildBetaDetails/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BuildBetaDetailResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsBuildBetaDetails: [FieldsBuildBetaDetails]?
			public var include: [Include]?
			public var fieldsBuilds: [FieldsBuilds]?

			public enum FieldsBuildBetaDetails: String, Codable, CaseIterable {
				case autoNotifyEnabled
				case build
				case externalBuildState
				case internalBuildState
			}

			public enum Include: String, Codable, CaseIterable {
				case build
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

			public init(fieldsBuildBetaDetails: [FieldsBuildBetaDetails]? = nil, include: [Include]? = nil, fieldsBuilds: [FieldsBuilds]? = nil) {
				self.fieldsBuildBetaDetails = fieldsBuildBetaDetails
				self.include = include
				self.fieldsBuilds = fieldsBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBuildBetaDetails, forKey: "fields[buildBetaDetails]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.BuildBetaDetailUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.BuildBetaDetailResponse> {
			.patch(path, body: body)
		}
	}
}
