//
//  AppDelegate.swift
//  FlightInfo
//
//  Created by Matteo Manferdini on 05/08/2017.
//  Copyright © 2017 Pure Creek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
//    private var stateController: StateController!

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		UINavigationBar.appearance().tintColor = .white
		UINavigationBar.appearance().barTintColor = .electricViolet
//        UINavigationBar.appearance().isTranslucent = false
		UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]

        if #available(iOS 11.0, *) {
            UINavigationBar.appearance().largeTitleTextAttributes =
                [NSAttributedStringKey.foregroundColor:UIColor.white,
                 NSAttributedStringKey.font:UIFont.boldSystemFont(ofSize: 30)]
        } else {
            // Fallback on earlier versions
        }
        
        // Dependency injection with StateController
        
        let initialController = window?.rootViewController as! UINavigationController
        let flightInfoViewController = initialController.viewControllers.first as! FlightInfoViewController
        let stateController = StateController(storageController: StorageController())
        flightInfoViewController.stateController = stateController
		return true
	}

}

extension UIColor {
	class var electricViolet: UIColor {
		return UIColor(red: 144.0 / 255.0, green: 18.0 / 255.0, blue: 254.0 / 255.0, alpha: 1.0)
	}
	
	class var amethystSmoke: UIColor {
		return UIColor(red: 169.0 / 255.0, green: 159.0 / 255.0, blue: 177.0 / 255.0, alpha: 1.0)
	}
}

// http://matteomanferdini.com/mvvm-pattern-ios-swift/
// http://matteomanferdini.com/the-correct-way-to-display-lists-in-ios-and-what-many-developers-do-wrong/
// http://matteomanferdini.com/the-ultimate-course-to-making-professional-ios-apps-bonuses/?referrer-code=7bdb10fbc2
// http://matteomanferdini.com/network-requests-rest-apis-ios-swift/

// https://medium.com/@jamesrochabrun/protocol-based-generic-networking-using-jsondecoder-and-decodable-in-swift-4-fc9e889e8081

// https://blog.lickability.com/our-view-on-view-models-4bb1d0675038
