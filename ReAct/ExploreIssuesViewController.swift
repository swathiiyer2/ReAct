//
//  ExploreIssuesViewController.swift
//  ReAct
//
//  Created by Swathi Iyer on 5/27/17.
//  Copyright © 2017 Swathi Iyer. All rights reserved.
//

import Foundation

import UIKit

class ExploreIssuesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView : UITableView!
    
    
    var selectedIssues = Set<String>()
    
    var lastStepArray = ["Apple", "Pear", "Banana", "Tomato", "Mango", "Pineapple", "Strawberry", "Blueberry", "Raspberry", "Blackberry", "Guava", "Kiwi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //make an array of last step words
    }
    
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
        cell.backgroundColor = UIColor.white
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "exploreIssuesCell", for: indexPath) as! ExploreIssuesTableViewCell
        
        cell.IssueText.text = lastStepArray[indexPath.row]
        
        //get object at that index for that row
        cell.textLabel?.text = ""
        cell.selectionStyle = .none
        if(!selectedIssues.contains(lastStepArray[indexPath.row])){
            // cell.IssueFollowButton.setImage(UIImage(named: "followButtonDeselected"), for: .normal)
        }else{
            // cell.IssueFollowButton.setImage(UIImage(named: "followButtonSelected"), for: .normal)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! ExploreIssuesTableViewCell
        
        
        //  cell.IssueFollowButton.setImage(UIImage(named: "followButtonSelected"), for: .normal)
        //get object at that index for that row
        cell.selectionStyle = .none
        cell.textLabel?.text = ""
        selectedIssues.insert(lastStepArray[indexPath.row])
        print(selectedIssues)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! ExploreIssuesTableViewCell
        
        
        //   cell.IssueFollowButton.setImage(UIImage(named: "followButtonDeselected"), for: .normal)
        
        //get object at that index for that row
        cell.selectionStyle = .none
        cell.textLabel?.text = ""
        selectedIssues.remove(lastStepArray[indexPath.row])
        print(selectedIssues)
    }
    
    //@IBAction func nextButtonPressed(_ sender: AnyObject) {
    //   NSLog("buttonPressed")
    //    self.performSegue(withIdentifier: "lastStep", sender: nil)
    //}
    
    //@IBAction func nextAction(_ sender: AnyObject) {
    //    networkingService.updateIssues(issue_areas: selectedIssues)
    
    //}
    
    
}
