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
        
    override func viewDidLoad() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
                
        //prevents scrolling for static content
        self.tableView.isScrollEnabled = false
        
        //removes top space from UITableView so it's flush with the button.
        self.tableView.contentInset = UIEdgeInsetsMake(-40, 0, 0, 0)
    }
    
}
