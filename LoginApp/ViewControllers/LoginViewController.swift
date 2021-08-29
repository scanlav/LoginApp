//
//  ViewController.swift
//  LoginApp
//
//  Created by Виктор Чуриков on 26.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "Admin"
    private let password = "Admin111"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let succesWU = segue.destination as? WelcomeUserViewController else {return}
        succesWU.user = user
        
    }
    
    @IBAction func logInButtonPressed() {
        if loginTextField.text != "Admin" || passwordTextField.text != "Admin111" {
            showAlert(
                title: "Access error",
                message: "You entered an incorrect username or password",
                textField: passwordTextField
            )}
    }
    
    @IBAction func forgotData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(user) 😉")
            : showAlert(title: "Oops!", message: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
        private func showAlert(title: String, message: String, textField: UITextField? = nil) {
            let okButtonAction = UIAlertAction(title: "OK", style: .cancel) { _ in
                textField?.text = ""
            }
            let alert = UIAlertController(
                title: title,
                message: message,
                preferredStyle: .alert
            )
            alert.addAction(okButtonAction)
            present(alert, animated: true)
        }
}

extension LoginViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}



