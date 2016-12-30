//
//  DemoDetailTableViewController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/30/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit

class DemoDetailTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsSelection = false
        //prevents scrolling for static content
        self.tableView.isScrollEnabled = false
    }
}
