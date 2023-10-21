//
//  User.swift
//  Foodly
//
//  Created by Marwan Hisham on 21/10/2023.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var emailAddress = ""
    var birthDate = Date()
    var extra = false
    var extraRefill = false
}
