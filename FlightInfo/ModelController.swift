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

    static func downloadFlightInfo(completion: @escaping ([Flight], Error?)->()) {
        let url = URL(string: "http://private-d3a64-flights10.apiary-mock.com/flight_info")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let _ = response, let data = data {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                do {
                    let flightContainer = try decoder.decode(FlightContainer.self, from: data)
                    completion(flightContainer.flights, nil)
                } catch let decodingError {
                    print(decodingError)
                    completion([], decodingError)
                }
            } else if let error = error {
                print(error)
                completion([], error)
            }
        }

        task.resume()
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
