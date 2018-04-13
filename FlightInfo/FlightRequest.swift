//
//  FlightRequest.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/13/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

class FlightRequest<T: APIResource>: NetworkRequest {
    typealias Model = Flight
    let resource: T
    init(resource: T) {
        self.resource = resource
    }

}
