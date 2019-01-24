//
//  TokenType.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

enum TokenType: String, Codable{
    case password = "password"
    case refresh = "refresh_token"
    
    var value: String{
        return rawValue
    }
    
}
