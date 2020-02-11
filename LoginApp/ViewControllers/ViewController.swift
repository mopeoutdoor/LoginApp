//
//  ViewController.swift
//  LoginApp
//
//  Created by Irina Kopchenova on 07.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func unwindToLogIn(unwindsegue: UIStoryboardSegue) {
        userNameLabel.text = ""
        passwordLabel.text = ""
    }
    
    @IBAction func logInButtonTapped(_ sender: UIButton) {
        if let login = userNameLabel.text, let password = passwordLabel.text, login.lowercased() == Person.login.rawValue.lowercased(), password == Person.password.rawValue {
            performSegue(withIdentifier: "LogedIn", sender: self)
        } else {
            alertMessage(title: "Warining", message: "Incorrect login or password")
        }
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: Any) {
        alertMessage(title: "Promt", message: "Your login name is \(Person.login.rawValue)")
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        alertMessage(title: "Promt", message: "Your password is \(Person.password.rawValue)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first as! Item1ViewController
        destinationVC.userName = Person.login.rawValue
        
    }
}

extension ViewController {
    private func alertMessage(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}


