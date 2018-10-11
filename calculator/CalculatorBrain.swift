//
//  CalculatorBrain.swift
//  calculator
//
//  Created by Dawn Chandler on 9/19/18.
//  Copyright © 2018 dawn. All rights reserved.
//

import Foundation

class CalculatorBrain {

    var expression: [String] = []
    var newNum: String = ""

    /// This function is triggered when user inputs data in for calculation.
    /// It updates the expression string array.
    ///
    /// - Parameter button: String
    func pressedButton(button: String) {

        if expression.first == "Error: invalid order of operations." {
            expression = []
        }

        if button.isNumButton {

            newNum += button

            // Clears stack if user enters digits after an answer was just calculated.
            if let lastElement = expression.last,
               let _ = Int(lastElement) {
                expression = []
            }

        } else if button.isOp {

            if newNum != "" {
                expression.append(newNum)
                newNum = ""
            }
            expression.append(button)

        } else if button == "clear" {

            expression = []
            newNum = ""

        } else if button == "=" {

            if newNum != "" {
                expression.append(newNum)
                newNum = ""
            }

            while expression.count > 1 {

                guard let secondNumberString = expression.popLast(),
                      let secondNumber = Int(secondNumberString),
                      let operatorValue = expression.popLast(),
                      let firstNumberString = expression.popLast(),
                      let firstNumber = Int(firstNumberString)
                else {
                    expression = ["Error: invalid order of operations."]
                    break
                }

                switch operatorValue {
                    case "+":
                        let answer = String(firstNumber + secondNumber)
                        expression.append(answer)
                    case "-":
                        let answer = String(firstNumber - secondNumber)
                        expression.append(answer)
                    default:
                        print("Error: Button is invalid.")
                        expression = []
                        break
                }

            }

            // Checks whether there is something other than (a number or nothing) remaining.
            if expression != [] && Int(expression.last ?? "") == nil {
                expression = ["Error: invalid order of operations."]
            }

        } else {

            print("Error: Button is invalid.")

        }

        print(expression, newNum)

    }

    func getUpdateTextValue() -> String? {
        if self.newNum != "" {
            return self.newNum
        }
        return self.expression.last ?? ""
    }
    
}

// MARK: - String Extension
extension String {
    // Checks that button is a valid calculator number button.
    var isNumButton: Bool {
        return ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"].contains(self)
    }
    // Checks that button is a valid calculator operator button.
    var isOp: Bool {
        return self == "+" || self == "-"
    }
}
