//
//  WelcomeViewController.swift
//  LogApp
//
//  Created by Сергей Захаров on 01.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = "Welcome, \(user)"
    }
}


