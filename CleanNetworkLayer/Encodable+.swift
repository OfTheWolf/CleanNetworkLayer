//
//  Encodable+.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        
        guard let data = try? JSONEncoder().encode(self), let dictionary = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            fatalError()
        }
        return dictionary ?? [:]
    }
}
