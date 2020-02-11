//
//  PerosonalDataViewController.swift
//  LoginApp
//
//  Created by Irina Kopchenova on 11.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class PerosonalDataViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }
    
    func updateUI() {
        loginName.delegate = self
        password.delegate = self
        firstName.delegate = self
        lastName.delegate = self
        email.delegate = self
        
        loginName.text = Person.login.rawValue
        password.text = Person.password.rawValue
        firstName.text = Person.firstName.rawValue
        lastName.text = Person.lastName.rawValue
        email.text = Person.email.rawValue
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    @IBAction func didClickDoneButton(_ sender: UIBarButtonItem) {
        view.endEditing(true)
    }


}
