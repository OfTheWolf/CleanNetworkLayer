//
//  TokenRequestModel.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

struct TokenRequestModel: Codable {
    let username: String
    let password: String
    let grantType: TokenType = .password
    
    enum CodingKeys: String, CodingKey {
        case username = "username"
        case password
        case grantType = "grant_type"
    }
    
}
