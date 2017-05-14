//
//  LoginViewController.swift
//  ReAct
//
//  Created by Swathi Iyer on 4/19/17.
//  Copyright © 2017 Swathi Iyer. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController : UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    let networkingService = NetworkingService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func logInAction(_ sender: AnyObject) {
        networkingService.signIn(email: emailField.text!, password: passwordField.text!)
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Home")
        present(vc, animated: true, completion: nil)
    }
}
