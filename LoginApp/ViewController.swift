//
//  ViewController.swift
//  LoginApp
//
//  Created by Виктор Чуриков on 26.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var forgotLoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func logInButtonPressed() {
        if loginTextField.text == "Admin",
           passwordTextField.text == "Admin111" {
            
        } else {
            let okButtonAction = UIAlertAction(
                title: "OK",
                style: .cancel
            ) { action in
                self.passwordTextField.text = ""
            }
            let alert = UIAlertController(
                title: "Access error",
                message: "You entered an incorrect username or password",
                preferredStyle: .alert
            )
            alert.addAction(okButtonAction)
            self.present(alert, animated: true)
        }
    }
    
    @IBAction func forgotLoginPressed() {
        let okButtonAction = UIAlertAction(
            title: "OK",
            style: .cancel
        )
        let alert = UIAlertController(
            title: "Forgot login",
            message: "Your login Admin",
            preferredStyle: .alert
        )
        alert.addAction(okButtonAction)
        self.present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordPressed() {
        let okButtonAction = UIAlertAction(
            title: "OK",
            style: .cancel
        ) { action in
            self.passwordTextField.text = ""
        }
        let alert = UIAlertController(
            title: "Forgot password",
            message: "Your password Admin111",
            preferredStyle: .alert
        )
        alert.addAction(okButtonAction)
        self.present(alert, animated: true)
    }
    
}

