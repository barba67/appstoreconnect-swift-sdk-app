// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appPreOrders: AppPreOrders {
		AppPreOrders(path: path + "/appPreOrders")
	}

	public struct AppPreOrders {
		/// Path: `/v1/appPreOrders`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppPreOrderCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppPreOrderResponse> {
			.post(path, body: body)
		}
	}
}
