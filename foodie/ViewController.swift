//
//  ViewController.swift
//  foodie
//
//  Created by Michael Miller on 26/12/2016.
//  Copyright © 2016 Michael Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties

    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodNameField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        foodLabel.text = textField.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    //MARK: Actions
    
    @IBAction func buttonSubmit(_ sender: UIButton) {
        foodLabel.text = "default text"
    }

}

