// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BuildBundleFileSize: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case buildBundleFileSizes
	}

	public struct Attributes: Codable {
		public var deviceModel: String?
		public var osVersion: String?
		public var downloadBytes: Int?
		public var installBytes: Int?

		public init(deviceModel: String? = nil, osVersion: String? = nil, downloadBytes: Int? = nil, installBytes: Int? = nil) {
			self.deviceModel = deviceModel
			self.osVersion = osVersion
			self.downloadBytes = downloadBytes
			self.installBytes = installBytes
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.deviceModel = try values.decodeIfPresent(String.self, forKey: "deviceModel")
			self.osVersion = try values.decodeIfPresent(String.self, forKey: "osVersion")
			self.downloadBytes = try values.decodeIfPresent(Int.self, forKey: "downloadBytes")
			self.installBytes = try values.decodeIfPresent(Int.self, forKey: "installBytes")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(deviceModel, forKey: "deviceModel")
			try values.encodeIfPresent(osVersion, forKey: "osVersion")
			try values.encodeIfPresent(downloadBytes, forKey: "downloadBytes")
			try values.encodeIfPresent(installBytes, forKey: "installBytes")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encode(links, forKey: "links")
	}
}
