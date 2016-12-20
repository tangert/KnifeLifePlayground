//
//  AddContactTableViewController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/19/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit
import TextFieldEffects

class AddContactTableViewController: UITableViewController {
        
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var demoDate: UILabel!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var additionalInfo: UITextField!
    
    override func viewDidLoad() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
                
        //prevents scrolling for static content
        self.tableView.isScrollEnabled = false
        
        //removes top space from UITableView so it's flush with the button.
        self.tableView.contentInset = UIEdgeInsetsMake(-40, 0, 0, 0)
        }
    
}
