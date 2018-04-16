//
//  APIError.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/13/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

enum APIError: Error {
    case requestFailed
    case invalidData
    case unwantedData
    case responseUnsuccessful
    case jsonParsingFailure

    var localizedDescription: String {
        switch self {
        case .requestFailed:
            return "Request Failed"
        case .invalidData:
            return "Invalid Data"
        case .unwantedData:
            return "API sent unwanted data"
        case .responseUnsuccessful:
            return "Response Unsuccessful"
        case .jsonParsingFailure:
            return "JSON Parsing Failure"
        }
    }
}
