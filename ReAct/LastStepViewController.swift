//
//  LastStepViewController.swift
//  ReAct
//
//  Created by Swathi Iyer on 5/14/17.
//  Copyright © 2017 Swathi Iyer. All rights reserved.
//

import Foundation

import UIKit

class LastStepViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var lastStepScroll: UIScrollView!
    @IBOutlet weak var lastStepView: UIView!
    @IBOutlet weak var tableview: UITableView!
    
    var lastStepArray = ["Apple", "Pear", "Banana", "Tomato"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //make an array of last step words
    }
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastStepArray.count
        //array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lastStepCell", for: indexPath)
        
       // let fruitName = fruits[indexPath.row]
        //get object at that index for that row
        let lastStepObject = lastStepArray[indexPath.row]
        cell.textLabel?.text = lastStepObject
        return cell
    }
 
}
