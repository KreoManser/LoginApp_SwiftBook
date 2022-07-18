//
//  WelcomeViewController.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 18.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user ?? "Username")"
    }
}
