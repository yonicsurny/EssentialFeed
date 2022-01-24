//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Yonic Surny on 24/01/2022.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
