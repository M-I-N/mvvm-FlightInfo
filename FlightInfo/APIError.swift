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
    case jsonConversionFailure
    case invalidData
    case responseUnsuccessful
    case jsonParsingFailure

    var localizedDescription: String {
        switch self {
        case .requestFailed:
            return "Request Failed"
        case .jsonConversionFailure:
            return "JSON Conversion Failure"
        case .invalidData:
            return "Invalid Data"
        case .responseUnsuccessful:
            return "Response Unsuccessful"
        case .jsonParsingFailure:
            return "JSON Parsing Failure"
        }
    }
}
