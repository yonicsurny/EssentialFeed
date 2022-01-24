//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Yonic Surny on 24/01/2022.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    return NSError(domain: "Test", code: 0)
}

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}
