//
//  WelcomeUserViewController.swift
//  LoginApp
//
//  Created by Виктор Чуриков on 26.08.2021.
//

import UIKit

class WelcomeUserViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
    }
  
}
