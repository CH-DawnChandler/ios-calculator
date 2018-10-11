//
//  ViewController.swift
//  calculator
//
//  Created by Dawn Chandler on 9/13/18.
//  Copyright © 2018 dawn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Public Attributes
    var brain = CalculatorBrain()

    // MARK: IBOutlets
    @IBOutlet var textDisplay: UILabel!

    // MARK: IBActions
    @IBAction func pressed(_ sender: UIButton) {
        let button = (sender.titleLabel?.text)!
        brain.pressedButton(button: button)
        textDisplay.text = brain.getUpdateTextValue()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
