//
//  Model.swift
//  FlightInfo
//
//  Created by Matteo Manferdini on 06/08/2017.
//  Copyright © 2017 Pure Creek. All rights reserved.
//

import Foundation

struct Airport: Codable {
	let symbol: String
	let name: String
	let city: String
}

struct Endpoint: Codable {
	let date: Date
	let airport: Airport
}

struct Flight: Codable {

    /// Custom duration types - short, long
    ///
    /// - short: Any duration less than 4 hrs is considered short
    /// - long: Any duration greater than or equal 4 hrs is considered long
    enum DurationType: String, Codable {
        case short
        case long
    }

	let airline: String
	let number: String
	let departure: Endpoint
	let arrival: Endpoint
	
	var duration: TimeInterval {
		return arrival.date.timeIntervalSince(departure.date)
	}

    var durationType: DurationType {
        switch duration {
        case (4 * 60 * 60)...:
            return .long
        default:
            return .short
        }
    }
}

struct FlightContainer: Codable {
    let flights: [Flight]
}
