//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Yonic Surny on 27/05/2021.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
