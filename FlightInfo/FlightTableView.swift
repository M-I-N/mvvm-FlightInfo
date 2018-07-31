//
//  FlightTableView.swift
//  FlightInfo
//
//  Created by Nayem on 4/1/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit

class FlightTableView: UITableView {
    
    private lazy var activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .gray)

    override func awakeFromNib() {
        super.awakeFromNib()
        self.separatorStyle = .none
        self.backgroundView = activityIndicatorView
        self.backgroundView?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        activityIndicatorView.startAnimating()
    }

    var viewModel: ViewModel? {
        didSet{
            DispatchQueue.main.async {
                if self.activityIndicatorView.isAnimating {
                    self.activityIndicatorView.stopAnimating()
                }
                guard let viewModel = self.viewModel else {
                    return
                }
                self.dataSource = viewModel.dataSource
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
