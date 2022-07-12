// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var ciWorkflows: CiWorkflows {
		CiWorkflows(path: path + "/ciWorkflows")
	}

	public struct CiWorkflows {
		/// Path: `/v1/ciWorkflows`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.CiWorkflowCreateRequest) -> Request<AppStoreConnect_Swift_SDK.CiWorkflowResponse> {
			.post(path, body: body)
		}
	}
}
