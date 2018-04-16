//
//  APIResource.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/10/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

protocol APIResource {
    associatedtype Model: Codable
    
    /// Base URL of the resource. Required
    var base: String { get }
    
    /// Path to the resource. Required
    var path: String { get }
    
    /// Optional URL query string known as API KEY. Default is nil
    var apiKey: String? { get }
    
    /// The http request method that the resource is defined. Default is "GET"
    var method: MethodType { get }
    
    /// Optional http request header fields as [String : String] dictionary for the associated resource. Default is nil
    var headers: [String : String]? { get }
    
    /// Optional http request body as Data encoded to .utf8 for the associated resource. Default is nil
    var body: Data? { get }
}
extension APIResource {
    
    /// Default to nil
    var apiKey: String? {
        return nil
    }
    
    /// Default to GET
    var method: MethodType {
        return .GET
    }
    
    /// Default to nil
    var headers: [String : String]? {
        return nil
    }
    
    /// Default to nil
    var body: Data? {
        return nil
    }
    
    /// Constructing the whole URL
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.query = apiKey
        return components
    }
    
    /// Constructing the URLRequest with all the required/necessary fields
    var request: URLRequest {
        let url = urlComponents.url!
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.allHTTPHeaderFields = headers
        request.httpBody = body
        return request
    }
}
