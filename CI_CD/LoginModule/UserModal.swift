//
//  UserModal.swift
//  CI_CD
//
//  Created by Navroz on 15/03/20.
//  Copyright © 2020 Navroz. All rights reserved.
//

import UIKit
fileprivate let emailAddress = "ci-cd@test.com"
fileprivate let password = "test@123"

class UserModal {
    var user = User()
    func validateCredentials(callback:(Bool, String)->())  {
        if user.email ==  emailAddress, user.password == password {
            callback(true, "logged in succesfully")
        } else {
            callback(false, "logged in failed!!")
        }
    }
}
