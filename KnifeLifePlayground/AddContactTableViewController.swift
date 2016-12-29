//
//  AddContactTableViewController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/19/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit

class AddContactTableViewController: UITableViewController {
    
    static var sharedInstance = AddContactTableViewController()
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var demoDate: UILabel!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var additionalInfo: UITextField!
    
    @IBOutlet weak var scheduleButton: UIButton!
    
    override func viewDidLoad() {

        self.tableView.allowsSelection = false
                
        //prevents scrolling for static content
        self.tableView.isScrollEnabled = false
        
        //removes top space from UITableView so it's flush with the button.
        self.tableView.contentInset = UIEdgeInsetsMake(-100, 0, 0, 0)
        
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        }
    
    @IBAction func pressSchedule(_ sender: Any) {
        
        let button = sender as! UIButton
        button.vibrate()
        
        DatePickerDialog().show("Set demo date", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", datePickerMode: .date) {
            (date) -> Void in
            self.demoDate.text! = "\(date)"
        }
        
        
    }
    
    
}
