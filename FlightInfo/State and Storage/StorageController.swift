//
//  StorageController.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/2/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation
class StorageController {
//    private var request: FlightsRequest<FlightsResource>?
    func fetchFlights(completion: @escaping ([Flight], Error?)-> ()) {
        let flightsResource = FlightsResource()
        let flightsRequest = FlightsRequest(resource: flightsResource)
//        request = flightsRequest
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
