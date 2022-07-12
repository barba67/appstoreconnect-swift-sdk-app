// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BundleIDsResponse: Codable {
	public var data: [BundleID]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable {
		case profile(Profile)
		case bundleIDCapability(BundleIDCapability)
		case app(App)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(Profile.self) {
				self = .profile(value)
			} else if let value = try? container.decode(BundleIDCapability.self) {
				self = .bundleIDCapability(value)
			} else if let value = try? container.decode(App.self) {
				self = .app(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .profile(let value): try container.encode(value)
			case .bundleIDCapability(let value): try container.encode(value)
			case .app(let value): try container.encode(value)
			}
		}
	}

	public init(data: [BundleID], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}
