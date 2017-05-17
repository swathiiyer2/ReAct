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
    
    
    var lastStepArray = ["Apple", "Pear", "Banana", "Tomato", "Apple", "Pear", "Banana", "Tomato", "Apple", "Pear", "Banana", "Tomato"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.backgroundColor = UIColor.clear
        //make an array of last step words
    }
    
   public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
        cell.backgroundColor = UIColor.clear
    }
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastStepArray.count
        //array.count
    }
    
//    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        var returnedView = UIView(frame: CGRectMake(x,y,width,height))
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lastStepCell", for: indexPath) as! LastStepTableViewCell

        
       // let fruitName = fruits[indexPath.row]
        cell.selector.image = UIImage(named: "plus")
        cell.issue.text = lastStepArray[indexPath.row]

        //get object at that index for that row
        cell.textLabel?.text = ""
        return cell
    }
 
}
