//
//  FlightTableView.swift
//  FlightInfo
//
//  Created by Nayem on 4/1/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit

class FlightTableView: UITableView {
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
        let activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        // Set Center
        let frame = self.bounds
        let centerPoint = CGPoint(x: frame.midX, y: frame.midY)
        activityIndicatorView.center = centerPoint
        
        self.addSubview(activityIndicatorView)
        return activityIndicatorView
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        self.separatorStyle = .none
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
