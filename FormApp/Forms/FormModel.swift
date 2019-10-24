//
//  FormModel.swift
//  FormApp
//
//  Created by HMSPL on 24/10/19.
//  Copyright © 2019 HMSPL. All rights reserved.
//

import Foundation

class FormModel: NSObject {
    /// Check Whether given string is valid mail
    func isValidEmail(emailStr: String) -> Bool {
        let emailTest = NSPredicate(format:"SELF MATCHES %@", RegexConstants.email)
        return emailTest.evaluate(with: emailStr)
    }
    
    /// Validates the first, last & email and if success provides "" or else provides errorMessage
    func validate(firstName: String, lastName: String, email: String) ->  String {
        if firstName.isEmpty {
            return AlertConstants.enterFirstName
        } else if firstName.count < 2 || firstName.count > 15 {
            return AlertConstants.invalidFirstName
        } else if lastName.isEmpty {
            return AlertConstants.enterLastName
        } else if lastName.count < 2 || lastName.count > 15 {
            return AlertConstants.invalidLastName
        } else if email.isEmpty {
            return AlertConstants.enterEmail
        } else if !isValidEmail(emailStr: email) {
            return AlertConstants.invalidEmail
        } else {
            return ""
        }
    }
    
}
