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
    private var dataSource: FlightTableViewDataSource!
    
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
        stateController.whenStateDidChange = { [unowned self] (updatedStateController) in
            self.dataSource = FlightTableViewDataSource(flights: updatedStateController.flights)
            self.flightTableView.viewModel = FlightTableView.ViewModel(dataSource: self.dataSource)
        }
        
	}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "ToFlightDetails":
            if let destination = segue.destination as? FlightDetailsViewController, let selectedRow = flightTableView.indexPathForSelectedRow?.row {
                let flight = dataSource.flights[selectedRow]
                destination.flight = flight
            }
        default:
            break
        }
    }
}

