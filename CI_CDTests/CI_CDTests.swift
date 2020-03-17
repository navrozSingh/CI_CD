//
//  CI_CDTests.swift
//  CI_CDTests
//
//  Created by Navroz on 15/03/20.
//  Copyright © 2020 Navroz. All rights reserved.
//

import XCTest
@testable import CI_CD

class CI_CDTests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testLoginUIElements() {
        let userModal = UserModal()
        userModal.user = User(email: "ci-cd@test.com", password: "test@123")
        userModal.validateCredentials { (completed, _) in
            XCTAssertTrue(completed)
        }
    }
}
