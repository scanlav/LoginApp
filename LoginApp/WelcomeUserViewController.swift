//
//  WelcomeUserViewController.swift
//  LoginApp
//
//  Created by Виктор Чуриков on 26.08.2021.
//

import UIKit

class WelcomeUserViewController: UIViewController {

    @IBOutlet var logoutButton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    
    var loginTF: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(loginTF ?? "")!"
    }
  
    @IBAction func logoutButtonPressed() {
        dismiss(animated: true)
    }
}
