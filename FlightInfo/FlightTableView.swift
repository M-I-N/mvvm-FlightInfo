//
//  FlightTableView.swift
//  FlightInfo
//
//  Created by Nayem on 4/1/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit

class FlightTableView: UITableView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
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

extension FlightTableView.ViewModel {
    
}
