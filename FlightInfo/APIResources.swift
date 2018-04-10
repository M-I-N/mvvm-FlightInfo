//
//  APIResources.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/10/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

protocol APIResource {
    var base: String { get }
    var path: String { get }
    var apiKey: String? { get }
}
extension APIResource {
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.query = apiKey

        return components
    }

}
