//
//  FlightTableViewDataSource.swift
//  FlightInfo
//
//  Created by Nayem on 4/2/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit


/// Subclass of NSObject. Responsible for the data source of FlightTableView
class FlightTableViewDataSource: NSObject {
    let flights: [Flight]

    /// Initializes the data source
    ///
    /// - Parameter flights: An array of flights
    init(flights: [Flight]) {
        self.flights = flights
    }
}

extension FlightTableViewDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: FlightTableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! FlightTableViewCell
        let flight = flights[indexPath.row]
        cell.viewModel = FlightTableViewCell.ViewModel(flight: flight)
        return cell
    }
}
