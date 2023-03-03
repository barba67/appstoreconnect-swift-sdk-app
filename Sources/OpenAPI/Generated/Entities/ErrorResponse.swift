// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct ErrorResponse: Codable {
	public var errors: [Error]?

	public struct Error: Codable, Identifiable {
		public var id: String?
		public var status: String
		public var code: String
		public var title: String
		public var detail: String?
		public var source: Source?

		public enum Source: Codable {
			case errorSourcePointer(ErrorSourcePointer)
			case errorSourceParameter(ErrorSourceParameter)

			public init(from decoder: Decoder) throws {
				let container = try decoder.singleValueContainer()
				if let value = try? container.decode(ErrorSourcePointer.self) {
					self = .errorSourcePointer(value)
				} else if let value = try? container.decode(ErrorSourceParameter.self) {
					self = .errorSourceParameter(value)
				} else {
					throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
				}
			}

			public func encode(to encoder: Encoder) throws {
				var container = encoder.singleValueContainer()
				switch self {
				case .errorSourcePointer(let value): try container.encode(value)
				case .errorSourceParameter(let value): try container.encode(value)
				}
			}
		}

		public init(id: String? = nil, status: String, code: String, title: String, detail: String? = nil, source: Source? = nil) {
			self.id = id
			self.status = status
			self.code = code
			self.title = title
			self.detail = detail
			self.source = source
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.id = try values.decodeIfPresent(String.self, forKey: "id")
			self.status = try values.decode(String.self, forKey: "status")
			self.code = try values.decode(String.self, forKey: "code")
			self.title = try values.decode(String.self, forKey: "title")
			self.detail = try values.decodeIfPresent(String.self, forKey: "detail")
			self.source = try values.decodeIfPresent(Source.self, forKey: "source")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(id, forKey: "id")
			try values.encode(status, forKey: "status")
			try values.encode(code, forKey: "code")
			try values.encode(title, forKey: "title")
			try values.encodeIfPresent(detail, forKey: "detail")
			try values.encodeIfPresent(source, forKey: "source")
		}
	}

	public init(errors: [Error]? = nil) {
		self.errors = errors
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.errors = try values.decodeIfPresent([Error].self, forKey: "errors")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(errors, forKey: "errors")
	}
}
