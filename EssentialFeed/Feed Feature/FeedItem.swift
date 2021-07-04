//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Yonic Surny on 27/05/2021.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
