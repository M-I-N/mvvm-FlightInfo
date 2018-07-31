//
//  FlightDetailsViewController.swift
//  FlightInfo
//
//  Created by Nayem on 4/18/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import UIKit

class FlightDetailsViewController: UIViewController {
    @IBOutlet private weak var flightDetailsView: FlightDetailsView!
    
    var flight: Flight!
    override func viewDidLoad() {
        super.viewDidLoad()
        flightDetailsView.viewModel = FlightDetailsView.ViewModel(flight: flight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
