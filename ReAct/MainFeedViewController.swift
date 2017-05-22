//
//  MainFeedViewController.swift
//  ReAct
//
//  Created by Swathi Iyer on 5/21/17.
//  Copyright © 2017 Swathi Iyer. All rights reserved.
//

import Foundation


import UIKit

class MainFeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var mainFeedTable: UITableView!
    
    
    
    
    var issuesArray = ["Homeless Bill", "Abortion Bill", "Environment Bill", "Middle East Bill", "LGBTQ Bill"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableview.backgroundColor = UIColor.clear
        //nextbutton.isEnabled = false
        //make an array of last step words
    }
    
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
        cell.backgroundColor = UIColor.white
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return issuesArray.count
        //array.count
    }
    
    //    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //        var returnedView = UIView(frame: CGRectMake(x,y,width,height))
    //    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainFeedCell", for: indexPath) as! MainFeedTableViewCell
        
        
        // let fruitName = fruits[indexPath.row]
        cell.backgroundImage.image = UIImage(named: "plus")
        cell.issue.text = issuesArray[indexPath.row]
        
        //get object at that index for that row
        cell.textLabel?.text = ""
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! LastStepTableViewCell
        
        
        cell.selector.image = UIImage(named: "check")
        
        //get object at that index for that row
        cell.issue.textColor = UIColor.init(red: (84.0/255.0), green: (199.0/255.0), blue: (252.0/255.0), alpha: (1.0))
        cell.selectionStyle = .none
        cell.background.backgroundColor = UIColor.white
        cell.textLabel?.text = ""
        cell.issue.text = lastStepArray[indexPath.row]
        selected.insert(lastStepArray[indexPath.row])
        nextbutton.isEnabled = true
        nextbutton.setTitleColor(UIColor.white, for: UIControlState.normal)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! LastStepTableViewCell
        
        
        cell.selector.image = UIImage(named: "plus")
        
        //get object at that index for that row
        cell.issue.textColor = UIColor.white
        cell.selectionStyle = .none
        cell.background.backgroundColor = UIColor.init(red: (106.0/255.0), green: (191.0/255.0), blue: (225.0/255.0), alpha: (1.0))
        cell.textLabel?.text = ""
        cell.issue.text = lastStepArray[indexPath.row]
        selected.remove(lastStepArray[indexPath.row])
        if(selected.count == 0){
            nextbutton.isEnabled = false
            nextbutton.setTitleColor(UIColor.init(red: (106.0/255.0), green: (191.0/255.0), blue: (225.0/255.0), alpha: (1.0)), for: UIControlState.normal)
            
        }
    }
    
    
    
}
