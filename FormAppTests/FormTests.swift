//
//  FormTests.swift
//  FormAppTests
//
//  Created by HMSPL on 24/10/19.
//  Copyright © 2019 HMSPL. All rights reserved.
//

import XCTest
@testable import FormApp

class FormTests: XCTestCase {
    
    var firstName = String()
    var lastName = String()
    var email = String()
    
    var model = FormModel()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        firstName = ""
        lastName = ""
        email = ""
    }

    func testEmptyFirstName() {
        firstName = ""
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, AlertConstants.enterFirstName)
    }
    
    func testInvalidMinFirstName() {
        firstName = "a"
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, AlertConstants.invalidFirstName)
    }
    
    func testInvalidMaxFirstName() {
        firstName = "abcdefghijklmnopqrstuvwxyz"
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, AlertConstants.invalidFirstName)
    }
    
    func testEmptyLastName() {
        firstName = "First"
        lastName = ""
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, AlertConstants.enterLastName)
    }
    
    func testInvalidMinLastName() {
        firstName = "First"
        lastName = "a"
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, AlertConstants.invalidLastName)
    }
    
    func testInvalidMaxLastName() {
        firstName = "First"
        lastName = "abcdefghijklmnopqrstuvwxyz"
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, AlertConstants.invalidLastName)
    }
    
    func testEmptyEmail() {
        firstName = "First"
        lastName = "Last"
        email = ""
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, AlertConstants.enterEmail)
    }
    
    func testInvalidEmail() {
        firstName = "First"
        lastName = "Last"
        email = "ras"
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, AlertConstants.invalidEmail)
    }
        
    func testValidForm() {
        firstName = "First"
        lastName = "Last"
        email = "hello@gmail.com"
        let validatedText = model.validate(firstName: firstName, lastName: lastName, email: email)
        XCTAssertEqual(validatedText, "")
    }

//
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    

}
