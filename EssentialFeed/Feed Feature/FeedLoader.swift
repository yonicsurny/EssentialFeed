//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Yonic Surny on 27/05/2021.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
