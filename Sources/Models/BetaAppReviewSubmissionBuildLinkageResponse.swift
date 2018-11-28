//
//  BetaAppReviewSubmissionBuildLinkageResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//
//  swiftlint:disable type_name

import Foundation
    
/// A response containing the ID of the related resource.
public struct BetaAppReviewSubmissionBuildLinkageResponse: Codable {

    /// The object types and IDs of the related resources.
    public let data: BetaAppReviewSubmissionBuildLinkageResponse.Data

    /// Navigational links including the self-link and links to the related data.
    public let links: DocumentLinks
    
    public struct Data: Codable {
    
        /// The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// The resource type.Value: builds
        public let type: String = "builds"
    }
}
