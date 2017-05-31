//
//  LoginViewController.swift
//  ReAct
//
//  Created by Swathi Iyer on 4/19/17.
//  Copyright © 2017 Swathi Iyer. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class LoginViewController : UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    let networkingService = NetworkingService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (emailField.text == "Email" && emailField.isTouchInside) {
            emailField.text = ""
        }
        
        if (passwordField.text == "Password" && passwordField.isTouchInside) {
            passwordField.text = ""
            passwordField.isSecureTextEntry = true
        }
        
        if (emailField.text == "Email" && emailField.isTouchInside) {
            emailField.text = ""
        }
    }
    
    @IBAction func forgotAction(_ sender: AnyObject) {
        networkingService.resetPassword(email: emailField.text!)
    }
    
    @IBAction func logInAction(_ sender: AnyObject) {
        /*
        networkingService.signIn(email: emailField.text!, password: passwordField.text!)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if
            FIRAuth.auth()?.currentUser != nil {
            let vc = storyboard.instantiateViewController(withIdentifier: "logInSuccess") as UIViewController
            present(vc, animated: true, completion: nil)
        } else {
            let vc = storyboard.instantiateViewController(withIdentifier: "logInFail") as UIViewController
            present(vc, animated: true, completion: nil)
        }
 */
    }
}
