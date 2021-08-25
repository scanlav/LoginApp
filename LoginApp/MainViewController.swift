//
//  ViewController.swift
//  LoginApp
//
//  Created by Виктор Чуриков on 26.08.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var forgotLoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let succesWU = segue.destination as? WelcomeUserViewController else {return}
        succesWU.loginTF = loginTextField.text
        
    }
    
    @IBAction func logInButtonPressed() {
        if loginTextField.text == "Admin",
           passwordTextField.text == "Admin111" {
            return
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
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
}

