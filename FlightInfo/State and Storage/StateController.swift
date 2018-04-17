//
//  StateController.swift
//  FlightInfo
//
//  Created by Nayem on 4/17/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation
class StateController {
    private let storageController: StorageController
    private(set) var flights = [Flight]()
    var whenStateDidChange: ((StateController)-> ())?
    init(storageController: StorageController) {
        self.storageController = storageController
        storageController.fetchFlights { [unowned self] (flights, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            self.flights = flights
            if let stateDidChanged = self.whenStateDidChange {
                stateDidChanged(self)
            }
        }
    }
}
