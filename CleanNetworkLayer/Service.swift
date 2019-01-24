//
//  Service.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

import Alamofire
import PromiseKit

class Service {
    
    
    /// Retrieves server base url from Info.plist with "SERVER URL" key
    static var url: String{
        //TODO: use a valid api url. change it in Info.plist
        guard let url = Bundle.main.object(forInfoDictionaryKey: "SERVER URL") as? String else{
            fatalError("SERVER URL was not found")
        }
        return url
    }
}
