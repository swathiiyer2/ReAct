//
//  InvalidPasswordViewController.swift
//  ReAct
//
//  Created by Vikul Gupta on 5/14/17.
//  Copyright © 2017 Swathi Iyer. All rights reserved.
//

import UIKit

class InvalidPasswordViewController: UIViewController {
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
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
