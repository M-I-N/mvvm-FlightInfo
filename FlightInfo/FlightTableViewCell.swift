//
//  FlightTableViewCell.swift
//  FlightInfo
//
//  Created by Nayem on 4/1/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit

class FlightTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var cardView: FlightCardView!
    
    var viewModel: ViewModel = ViewModel() {
        didSet {
            cardView.viewModel = FlightCardView.ViewModel(flight: viewModel.flight)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension FlightTableViewCell {
    struct ViewModel {
        let flight: Flight
    }
}

extension FlightTableViewCell.ViewModel {

    /// Use this only when you need to test a cell
    init() {
        let notAMeaningfulDate = Date(timeIntervalSinceReferenceDate: 1.0)    // A convenience reference date
        flight = Flight(airline: "ABC Airline", number: "ABC 12345", departure: Endpoint(date: notAMeaningfulDate, airport: Airport(symbol: "DEP", name: "Departure Airport", city: "Departure City")) , arrival: Endpoint(date: notAMeaningfulDate, airport: Airport(symbol: "ARR", name: "Arrival Airport", city: "Arrival City")))
    }
}
