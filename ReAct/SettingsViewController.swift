//
//  SettingsViewController.swift
//  ReAct
//
//  Created by Swathi Iyer on 5/13/17.
//  Copyright © 2017 Swathi Iyer. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SettingsTableView: UITableView{
    
    
}

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logOutAction(_ sender: AnyObject) {
        if FIRAuth.auth()?.currentUser != nil {
            do {
                try FIRAuth.auth()?.signOut()
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "Home") as UIViewController
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
}

