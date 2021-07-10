//
//  URLSessionHTTPClient.swift
//  EssentialFeed
//
//  Created by Yonic Surny on 09/07/2021.
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    private struct UnexpectedValuesRepresentation: Error {}
    
    public func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void) {
        session.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            if let data = data, let response = response as? HTTPURLResponse {
                completion(.success(data, response))
                return
            }
            completion(.failure(UnexpectedValuesRepresentation()))
        }.resume()
    }
}