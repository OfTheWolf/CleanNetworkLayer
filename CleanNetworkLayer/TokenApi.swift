//
//  TokenApi.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

import PromiseKit

class TokenApi {
    
    static func token(username: String, password: String) -> Promise<TokenModel>{
        
        return Alamofire
            .request(Router.token(TokenRequestModel(username: username, password: password)))
            .validate()
            .responseDecodable(TokenModel.self)
    }
    
}
