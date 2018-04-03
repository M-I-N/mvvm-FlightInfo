//
//  FlightTableView.swift
//  FlightInfo
//
//  Created by Nayem on 4/1/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit

class FlightTableView: UITableView {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.separatorStyle = .none
    }

    var viewModel: ViewModel? {
        didSet{
            self.dataSource = viewModel?.dataSource
            DispatchQueue.main.async {
                self.reloadData()
            }
        }
    }

}

extension FlightTableView {
    struct ViewModel {
        let dataSource: FlightTableViewDataSource
    }
}
