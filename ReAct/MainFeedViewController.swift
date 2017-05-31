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
    
    var tableView : UITableView!
    @IBOutlet weak var tableview: UITableView!
    
    var issuesArray = ["Homeless", "Abortion", "Environment", "Middle East", "LGBTQ"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: (115.0/255.0), green: (207.0/255.0), blue: (243.0/255.0), alpha: (1.0))
        self.tableview.backgroundColor = UIColor.clear
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
        
    cell.reactButton.layer.borderColor = UIColor.init(red: (115.0/255.0), green: (207.0/255.0), blue: (243.0/255.0), alpha: (1.0)).cgColor

        // what follows is just the default testing
    
        cell.backgroundImage.image = UIImage(named: "defaultImage")
        cell.billTitle.text = issuesArray[indexPath.row]+" Bill"
        cell.category.text = issuesArray[indexPath.row]
        cell.timeLeft.text = "1d"
        cell.selectionStyle = .none
 
        return cell
    }
 
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let cell = tableView.cellForRow(at: indexPath) as! MainFeedTableViewCell
        
        /*
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
        */
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //let cell = tableView.cellForRow(at: indexPath) as! MainFeedTableViewCell
        
        /*
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
        */
    }
 
    
    
    
}
