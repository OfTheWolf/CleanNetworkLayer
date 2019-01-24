//
//  NetworkRequestable.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

import Alamofire

protocol NetworkRequestable {
    var path: String{get}
    var parameters: Parameters{get}
    var method: HTTPMethod{get}
    var encoding: ParameterEncoding{get}
    
}
