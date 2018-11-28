//
//  AppBetaGroupsLinkagesResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A response containing a list of related resource IDs.
public struct AppBetaGroupsLinkagesResponse: Codable {

    /// (Required) The object types and IDs of the related resources.
    public let data: [AppBetaGroupsLinkagesResponse.Data]

    /// (Required) Navigational links including the self-link and links to the related data.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
    
    public struct Data: Codable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// (Required) The resource type.Value: betaGroups
        public let type: String = "betaGroups"
    }
}
