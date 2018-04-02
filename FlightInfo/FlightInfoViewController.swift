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
        
        // Retrieve flights data from Model controller
        let flights = FlightDataController().flights
        let flightTableViewDataSource = FlightTableViewDataSource(flights: flights)
        flightTableView.viewModel = FlightTableView.ViewModel(dataSource: flightTableViewDataSource)
        
        flightTableView.estimatedRowHeight = 260
        flightTableView.rowHeight = UITableViewAutomaticDimension
	}
}

