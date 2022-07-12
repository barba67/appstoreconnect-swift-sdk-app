// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct MetricsInsight: Codable {
	public var metricCategory: MetricCategory?
	public var latestVersion: String?
	public var metric: String?
	public var summaryString: String?
	public var referenceVersions: String?
	public var maxLatestVersionValue: Double?
	public var subSystemLabel: String?
	public var isHighImpact: Bool?
	public var populations: [Population]?

	public struct Population: Codable {
		public var deltaPercentage: Double?
		public var percentile: String?
		public var summaryString: String?
		public var referenceAverageValue: Double?
		public var latestVersionValue: Double?
		public var device: String?

		public init(deltaPercentage: Double? = nil, percentile: String? = nil, summaryString: String? = nil, referenceAverageValue: Double? = nil, latestVersionValue: Double? = nil, device: String? = nil) {
			self.deltaPercentage = deltaPercentage
			self.percentile = percentile
			self.summaryString = summaryString
			self.referenceAverageValue = referenceAverageValue
			self.latestVersionValue = latestVersionValue
			self.device = device
		}
	}

	public init(metricCategory: MetricCategory? = nil, latestVersion: String? = nil, metric: String? = nil, summaryString: String? = nil, referenceVersions: String? = nil, maxLatestVersionValue: Double? = nil, subSystemLabel: String? = nil, isHighImpact: Bool? = nil, populations: [Population]? = nil) {
		self.metricCategory = metricCategory
		self.latestVersion = latestVersion
		self.metric = metric
		self.summaryString = summaryString
		self.referenceVersions = referenceVersions
		self.maxLatestVersionValue = maxLatestVersionValue
		self.subSystemLabel = subSystemLabel
		self.isHighImpact = isHighImpact
		self.populations = populations
	}

	private enum CodingKeys: String, CodingKey {
		case metricCategory
		case latestVersion
		case metric
		case summaryString
		case referenceVersions
		case maxLatestVersionValue
		case subSystemLabel
		case isHighImpact = "highImpact"
		case populations
	}
}
