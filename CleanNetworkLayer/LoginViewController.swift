//
//  ViewController.swift
//  CleanNetworkLayer
//
//  Created by ugur on 3.12.2018.
//  Copyright © 2018 Of The Wolf. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController{
    
    
    @IBAction func loginAction(_ sender: Any) {
        TokenApi
            .token(username: "ugur", password: "123456")
            .done { (tokenModel) in
                //TODO: navigate to main screen
            }.catch { (error) in
                //self.handle(error: error)
            }.finally {
                //self.stopAnimating()
        }
    }
}
