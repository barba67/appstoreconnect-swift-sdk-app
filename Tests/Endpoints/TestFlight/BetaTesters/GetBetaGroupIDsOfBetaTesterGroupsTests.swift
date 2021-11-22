//
//  GetBetaGroupIDsOfBetaTesterGroupsTests.swift
//  AppStoreConnect-Swift-SDK_Tests
//
//  Created by Pascal Edmond on 26/11/2018.
//

import XCTest
@testable import AppStoreConnect_Swift_SDK

final class GetBetaGroupIDsOfBetaTesterGroupsTests: XCTestCase {

    func testURLRequest() {
        let endpoint = APIEndpoint.betaGroupIDs(
            ofBetaTesterWithId: "betaTesterId",
            limit: 2)

        let request = try? endpoint.asURLRequest()
        XCTAssertEqual(request?.httpMethod, "GET")

        let absoluteString = request?.url?.absoluteString
        let expected = "https://api.appstoreconnect.apple.com/v1/betaTesters/betaTesterId/relationships/betaGroups?limit=2"
        XCTAssertEqual(absoluteString, expected)
    }
}
