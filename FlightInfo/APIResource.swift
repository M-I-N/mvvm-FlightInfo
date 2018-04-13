//
//  APIResources.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/10/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

protocol APIResource {
    associatedtype Model: Codable
    var base: String { get }
    var path: String { get }
}
extension APIResource {
    var apiKey: String? {
        return nil
    }
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.query = apiKey
        return components
    }
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}
