import Foundation
import EssentialFeed

func anyNSError() -> NSError {
	return NSError(domain: "Test", code: 0)
}

func anyURL() -> URL {
	return URL(string: "https://any-url.com")!
}
