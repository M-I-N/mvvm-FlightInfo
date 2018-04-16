//
//  FlightRequest.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/13/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

class FlightsRequest<Resource: APIResource> {
    let resource: Resource
    init(resource: Resource) {
        self.resource = resource
    }
}

extension FlightsRequest: NetworkRequest {
    typealias Model = Resource.Model
    func getFlights(completion: @escaping (Result<Model, APIError>)-> ()) {
        fetch(with: resource.request, decode: { (decoded) -> Model? in
            guard let decodedModel = decoded as? Model else {
                return nil
            }
            return decodedModel
        }, completion: completion)
    }
}
