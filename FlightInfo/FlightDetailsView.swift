//
//  FlightDetailsView.swift
//  FlightInfo
//
//  Created by Nayem on 4/18/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit

class FlightDetailsView: UIView {
    @IBOutlet private weak var fromAirportLabel: UILabel!
    @IBOutlet private weak var fromCityLabel: UILabel!
    @IBOutlet private weak var fromDateLabel: UILabel!
    @IBOutlet private weak var toAirportLabel: UILabel!
    @IBOutlet private weak var toCityLabel: UILabel!
    @IBOutlet private weak var toDateLabel: UILabel!
    @IBOutlet private weak var airlineNameLabel: UILabel!
    @IBOutlet private weak var flightNumberLabel: UILabel!
    @IBOutlet private weak var durationLabel: UILabel!
    
    var viewModel: ViewModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            fromAirportLabel.text = viewModel.fromAirport
            fromCityLabel.text = viewModel.fromCity
            fromDateLabel.text = viewModel.fromDay
            toAirportLabel.text = viewModel.toAirport
            toCityLabel.text = viewModel.toCity
            toDateLabel.text = viewModel.toDay
            airlineNameLabel.text = viewModel.airlineName
            flightNumberLabel.text = viewModel.flightNumber
            durationLabel.text = viewModel.duration
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension FlightDetailsView {
    struct ViewModel {
        let fromAirport: String
        let fromCity: String
        let fromDay: String
        let toAirport: String
        let toCity: String
        let toDay: String
        let airlineName: String
        let flightNumber: String
        let duration: String
    }
}

extension FlightDetailsView.ViewModel {
    init(flight: Flight) {
        fromAirport = ": " + flight.departure.airport.name
        fromCity = ": " + flight.departure.airport.city
        fromDay = ": " + flight.departure.date.day + " at " + flight.departure.date.time
        toAirport = ": " + flight.arrival.airport.name
        toCity = ": " + flight.arrival.airport.city
        toDay = ": " + flight.arrival.date.day + " at " + flight.arrival.date.time
        airlineName = ": " + flight.airline
        flightNumber = ": " + flight.number
        duration = ": " + flight.duration.formatted
    }
}
