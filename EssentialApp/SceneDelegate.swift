//
//  Copyright © Aelptos. All rights reserved.
//

import UIKit
import EssentialFeed
import EssentialFeediOS

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }

        let url = feedTestServerURL
        let session = URLSession(configuration: .ephemeral)
        let client = URLSessionHTTPClient(session: session)
        let feedLoader = RemoteFeedLoader(url: url, client: client)
        let imageLoader = RemoteFeedImageDataLoader(client: client)

        let feedViewController = FeedUIComposer.feedComposedWith(
            feedLoader: feedLoader,
            imageLoader: imageLoader
        )

        window?.rootViewController = feedViewController
    }

    private var feedTestServerURL: URL {
        return URL(string: "http://localhost:3000/api/v1/feed")!
        //return URL(string: "https://ile-api.essentialdeveloper.com/essential-feed/v1/feed")!
    }
}
