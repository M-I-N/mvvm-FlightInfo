//
//  ViewController.swift
//  FlightInfo
//
//  Created by Matteo Manferdini on 05/08/2017.
//  Copyright © 2017 Pure Creek. All rights reserved.
//

import UIKit

class FlightInfoViewController: UIViewController {
	private weak var cardView: FlightCardView!
    @IBOutlet private weak var flightTableView: FlightTableView!
    
	override func viewDidLoad() {
		super.viewDidLoad()
		let flight = createFlight()
//        cardView.viewModel = FlightCardView.ViewModel(flight: flight)
        let flights = Array(repeating: flight, count: 10)
        let flightTableViewDataSource = FlightTableViewDataSource(flights: flights)
        flightTableView.viewModel = FlightTableView.ViewModel(dataSource: flightTableViewDataSource)
        
        flightTableView.estimatedRowHeight = 113
        flightTableView.rowHeight = UITableViewAutomaticDimension
//        flightTableView.reloadData()
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
				airport: Airport(symbol: "SVO", name: "Shere", city: "Moscow")
			)
		)
	}
}

