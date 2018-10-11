//
//  CalculatorBrainTests.swift
//  calculatorTests
//
//  Created by Dawn Chandler on 10/2/18.
//  Copyright © 2018 dawn. All rights reserved.
//

import XCTest
//import CalculatorBrain

class CalculatorBrainTests: XCTestCase {

    var brain: CalculatorBrain!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        brain = CalculatorBrain()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBasicInput() {

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "2")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "3")

        brain.pressedButton(button: "9")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "5")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "4")

        brain.pressedButton(button: "3")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "0")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "3")

        brain.pressedButton(button: "7")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "-1")

        brain.pressedButton(button: "5")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "-3")

        brain.pressedButton(button: "9")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "2")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "11")

        brain.pressedButton(button: "7")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "6")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "13")

        brain.pressedButton(button: "3")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "9")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "-6")

        brain.pressedButton(button: "5")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "9")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "6")
    }

    func testMultiDigitInput() {

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "3")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "5")

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "5")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "59")

        brain.pressedButton(button: "5")
        brain.pressedButton(button: "2")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "7")
        brain.pressedButton(button: "7")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "129")

        brain.pressedButton(button: "5")
        brain.pressedButton(button: "0")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "9")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "-39")

        brain.pressedButton(button: "6")
        brain.pressedButton(button: "0")
        brain.pressedButton(button: "3")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "3")
        brain.pressedButton(button: "7")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "6175")

        brain.pressedButton(button: "5")
        brain.pressedButton(button: "0")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "0")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "9")
        brain.pressedButton(button: "2")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "3")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "-87121")
    }

    func testClearButton() {

        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "clear")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "5")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "5")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "4")
        brain.pressedButton(button: "2")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "=")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "3")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "3")
        brain.pressedButton(button: "2")
        brain.pressedButton(button: "7")
        brain.pressedButton(button: "5")
        brain.pressedButton(button: "0")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "clear")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

    }

    // Tests invalid order of buttons.
    func testEqualsButton() {

        brain.pressedButton(button: "3")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "6")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "9")

        brain.pressedButton(button: "4")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "8")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "-84")

        brain.pressedButton(button: "3")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "3")

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "0")
        brain.pressedButton(button: "3")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "103")

        brain.pressedButton(button: "-")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "2")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "Error: invalid order of operations.")

        brain.pressedButton(button: "7")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "Error: invalid order of operations.")

        brain.pressedButton(button: "-")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "Error: invalid order of operations.")

        brain.pressedButton(button: "4")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "Error: invalid order of operations.")

        brain.pressedButton(button: "=")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "-")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "Error: invalid order of operations.")

        brain.pressedButton(button: "1")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "3")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "4")

        brain.pressedButton(button: "7")
        brain.pressedButton(button: "+")
        brain.pressedButton(button: "4")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "5")
        brain.pressedButton(button: "2")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "52")

        brain.pressedButton(button: "3")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "=")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "2")

        brain.pressedButton(button: "3")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "-")
        brain.pressedButton(button: "1")
        brain.pressedButton(button: "=")
        XCTAssertEqual(brain.getUpdateTextValue(), "Error: invalid order of operations.")

    }

    func testInvalidInputsThatAreNotButtons() {

        brain.pressedButton(button: "12345")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "abcde")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "abc123")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "+_+++--")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

        brain.pressedButton(button: "a;sdfuy\n9824^*&^%(")
        XCTAssertEqual(brain.getUpdateTextValue(), "")

    }

}
