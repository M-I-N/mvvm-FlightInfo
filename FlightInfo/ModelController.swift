//
//  ModelController.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/2/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation
class FlightDataController {
    var flights = [Flight]()
    init() {
        let flight = createFlight()
        flights = Array(repeating: flight, count: 100)
    }

    private func createFlight() -> Flight {
        return Flight(
            airline: "Aeroflot",
            number: "AF 3245",
            departure: Endpoint(
                date: Date(),
                airport: Airport(symbol: "AMS", name: "Schipol", city: "Amsterdam")
            ),
            arrival: Endpoint(
                date: Date().addingTimeInterval(3 * 60 * 60 + 10 * 60),
                airport: Airport(symbol: "SVO", name: "Sheremetyevo", city: "Moscow")
            )
        )
    }
}
