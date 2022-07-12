// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var customerReviewResponses: CustomerReviewResponses {
		CustomerReviewResponses(path: path + "/customerReviewResponses")
	}

	public struct CustomerReviewResponses {
		/// Path: `/v1/customerReviewResponses`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.CustomerReviewResponseV1CreateRequest) -> Request<AppStoreConnect_Swift_SDK.CustomerReviewResponseV1Response> {
			.post(path, body: body)
		}
	}
}