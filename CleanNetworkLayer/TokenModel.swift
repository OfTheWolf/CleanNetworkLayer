//
//  TokenModel.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

struct TokenModel: Codable {
    let accessToken: String
    let tokenType: String
    let expiresIn: Int
    var refreshToken: String?
    let issued: String
    let expires: String
    
    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case refreshToken = "refresh_token"
        case issued = ".issued"
        case expires = ".expires"
    }
}
