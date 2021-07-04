//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Yonic Surny on 04/07/2021.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL,
             completion: @escaping (HTTPClientResult) -> Void)
}
