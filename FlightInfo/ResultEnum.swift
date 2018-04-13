//
//  ResultEnum.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/13/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

enum Result<T, U: Error> {
    case success(T)
    case failure(U)
}
