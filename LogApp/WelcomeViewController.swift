//
//  WelcomeViewController.swift
//  LogApp
//
//  Created by Сергей Захаров on 01.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = "Welcome, \(username ?? "")"
    }
    
    @IBAction func logOutButtonTapped(_ sender: UIButton) {
        if let loginVC = presentingViewController as? LoginViewController {
            loginVC.usernameTextField.text = nil
            loginVC.passwordTextField.text = nil
        }
        dismiss(animated: true, completion: nil)
    }
}

