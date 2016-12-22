//
//  ContactTableViewController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/21/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit

class ContactTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        //prevents scrolling for static content
        self.tableView.isScrollEnabled = false
        self.tableView.contentInset = UIEdgeInsetsMake(-100, 0, 0, 0)
    }
    
    
    
}
