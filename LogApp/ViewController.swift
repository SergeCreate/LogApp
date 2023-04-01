//
//  ViewController.swift
//  LogApp
//
//  Created by Сергей Захаров on 01.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.autocorrectionType = .no
        usernameTextField.smartDashesType = .no
        usernameTextField.smartQuotesType = .no
        
        passwordTextField.isSecureTextEntry = true
        
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let correctUsername = "1"
        let correctPassword = "1"
        
        guard usernameTextField.text == correctUsername,
              passwordTextField.text == correctPassword
        else {
            let alert = UIAlertController(
                title: "Invalid login or password",
                message: nil,
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK",
                                          style: .default,
                                          handler: { _ in
                self.passwordTextField.text = ""
            }))
            present(alert, animated: true, completion: nil)
            return
        }
        
        performSegue(withIdentifier: "showWelcome", sender: self)
    }
    
    @IBAction func forgotUsernameTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Your username is '1'",
                                      message: nil,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK",
                                      style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Your password is '1'",
                                      message: nil,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWelcome" {
            let destinationVC = segue.destination as! WelcomeViewController
            destinationVC.username = usernameTextField.text
        }
    }
}

