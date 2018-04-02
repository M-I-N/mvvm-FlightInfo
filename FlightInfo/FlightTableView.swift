//
//  FlightTableView.swift
//  FlightInfo
//
//  Created by Nayem on 4/1/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit

class FlightTableView: UITableView {

    var viewModel: ViewModel? {
        didSet{
            self.dataSource = viewModel?.dataSource
            self.reloadData()
        }
    }

}

extension FlightTableView {
    struct ViewModel {
        let dataSource: FlightTableViewDataSource
    }
}
