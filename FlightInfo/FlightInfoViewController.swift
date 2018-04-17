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
    
    var stateController: StateController!
    
	override func viewDidLoad() {
		super.viewDidLoad()

        // Navigation bar modification
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
        } else {
            // Fallback on earlier versions
        }

        flightTableView.estimatedRowHeight = 260
        flightTableView.rowHeight = UITableViewAutomaticDimension
        
        stateController.whenStateDidChange = { (updatedStateController) in
            let flightTableViewDataSource = FlightTableViewDataSource(flights: updatedStateController.flights)
            self.flightTableView.viewModel = FlightTableView.ViewModel(dataSource: flightTableViewDataSource)
        }
        
	}
}

