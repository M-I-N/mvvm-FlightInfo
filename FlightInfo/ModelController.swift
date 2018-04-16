//
//  ModelController.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/2/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation
class FlightDataController {
    class func fetchFlights(completion: @escaping ([Flight], Error?)-> ()) {
        let flightsResource = FlightsResource()
        let flightsRequest = FlightsRequest(resource: flightsResource)
        flightsRequest.getFlights { (result) in
            switch result {
            case .success(let flightsContainer):
                let flights = flightsContainer.flights
                completion(flights, nil)
            case .failure(let error):
                print(error.localizedDescription)
                completion([], error)
            }
        }
    }
}
