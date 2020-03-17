//
//  CI_CDUITests.swift
//  CI_CDUITests
//
//  Created by Navroz on 15/03/20.
//  Copyright © 2020 Navroz. All rights reserved.
//

import XCTest

class CI_CDUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testLoginUIElements() {
        let app = XCUIApplication()
        app.launch()
        let username = app.textFields["Email"]
        let passwordTextField = app.textFields["Password"]
        username.tap()
        username.typeText("ci-cd@test.com")
        passwordTextField.tap()
        passwordTextField.typeText("test@123")
        app.buttons["Login"].tap()
        app.alerts["Success"].scrollViews.otherElements.buttons["OK"].tap()

    }
}

