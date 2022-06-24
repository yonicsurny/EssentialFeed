//
//  Copyright © Aelptos. All rights reserved.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    return NSError(domain: "Test", code: 0)
}

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
