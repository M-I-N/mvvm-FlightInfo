//
//  FlightAPIResource.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/13/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

struct FlightsResource: APIResource {
    typealias Model = FlightContainer
    let base = "http://private-d3a64-flights10.apiary-mock.com"
    let path = "/flight_info"
}
