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
    init() {
        flight = Flight(airline: "", number: "", departure: Endpoint(date: Date(), airport: Airport(symbol: "", name: "", city: "")) , arrival: Endpoint(date: Date(), airport: Airport(symbol: "", name: "", city: "")))
    }
}
