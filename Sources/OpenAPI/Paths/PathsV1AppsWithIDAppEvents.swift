// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var appEvents: AppEvents {
		AppEvents(path: path + "/appEvents")
	}

	public struct AppEvents {
		/// Path: `/v1/apps/{id}/appEvents`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEventsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterEventState: [FilterEventState]?
			public var filterID: [String]?
			public var fieldsAppEventLocalizations: [FieldsAppEventLocalizations]?
			public var fieldsAppEvents: [FieldsAppEvents]?
			public var limit: Int?
			public var limitLocalizations: Int?
			public var include: [Include]?

			public enum FilterEventState: String, Codable, CaseIterable {
				case draft = "DRAFT"
				case readyForReview = "READY_FOR_REVIEW"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case rejected = "REJECTED"
				case accepted = "ACCEPTED"
				case approved = "APPROVED"
				case published = "PUBLISHED"
				case past = "PAST"
				case archived = "ARCHIVED"
			}

			public enum FieldsAppEventLocalizations: String, Codable, CaseIterable {
				case appEvent
				case appEventScreenshots
				case appEventVideoClips
				case locale
				case longDescription
				case name
				case shortDescription
			}

			public enum FieldsAppEvents: String, Codable, CaseIterable {
				case app
				case archivedTerritorySchedules
				case badge
				case deepLink
				case eventState
				case localizations
				case primaryLocale
				case priority
				case purchaseRequirement
				case purpose
				case referenceName
				case territorySchedules
			}

			public enum Include: String, Codable, CaseIterable {
				case localizations
			}

			public init(filterEventState: [FilterEventState]? = nil, filterID: [String]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, include: [Include]? = nil) {
				self.filterEventState = filterEventState
				self.filterID = filterID
				self.fieldsAppEventLocalizations = fieldsAppEventLocalizations
				self.fieldsAppEvents = fieldsAppEvents
				self.limit = limit
				self.limitLocalizations = limitLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterEventState, forKey: "filter[eventState]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(fieldsAppEventLocalizations, forKey: "fields[appEventLocalizations]")
				encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitLocalizations, forKey: "limit[localizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
