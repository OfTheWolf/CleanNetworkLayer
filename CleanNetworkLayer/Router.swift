//
//  Router.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

import Alamofire

struct TokenPaths {
    static let token = "Token"
}

enum Router {
    case token(TokenRequestModel)
}

extension Router: URLRequestConvertible, NetworkRequestable {
    
    var path: String{
        switch self {
        case .token:
            return TokenPaths.token
        }
    }
    
    var parameters: Parameters{
        var parameters = Parameters()
        
        switch self {
        case .token(let model):
            parameters = model.asDictionary()
        }
        return parameters
    }
    
    var method: HTTPMethod {
        switch self {
        case .token:
            return .get
        }
    }
    
    var encoding: ParameterEncoding {
        switch self {
        case .token:
            return URLEncoding.default
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = try Service.url.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        urlRequest = try encoding.encode(urlRequest, with: parameters)
        
        return urlRequest
    }
    
}
