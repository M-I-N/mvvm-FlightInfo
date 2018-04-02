//
//  ViewController.swift
//  FlightInfo
//
//  Created by Matteo Manferdini on 05/08/2017.
//  Copyright © 2017 Pure Creek. All rights reserved.
//

import UIKit

class FlightInfoViewController: UIViewController {
    @IBOutlet private weak var flightTableView: FlightTableView!
    
	override func viewDidLoad() {
		super.viewDidLoad()

        // Navigation bar modification
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
        } else {
            // Fallback on earlier versions
        }
        
        // Create data
		let flight = createFlight()
        let flights = Array(repeating: flight, count: 10)
        let flightTableViewDataSource = FlightTableViewDataSource(flights: flights)
        flightTableView.viewModel = FlightTableView.ViewModel(dataSource: flightTableViewDataSource)
        
        flightTableView.estimatedRowHeight = 260
        flightTableView.rowHeight = UITableViewAutomaticDimension
	}
}

private extension FlightInfoViewController {
	func createFlight() -> Flight {
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

