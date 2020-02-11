//
//  Item1ViewController.swift
//  LoginApp
//
//  Created by Irina Kopchenova on 08.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class Item1ViewController: UIViewController {
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelOutlet.text = "Welcome, \(userName)"
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
