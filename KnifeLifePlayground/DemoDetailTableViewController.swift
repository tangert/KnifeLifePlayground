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
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var navButton: UIButton!
    @IBOutlet weak var emailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.allowsSelection = false
        //prevents scrolling for static content
        self.tableView.isScrollEnabled = false
    }
    
    //IBAction
    @IBAction func pressPhone(_ sender: Any) {
        let button = sender as! UIButton
        button.vibrate()
        
    }
    @IBAction func pressNav(_ sender: Any) {
        let button = sender as! UIButton
        button.vibrate()
        
    }
    @IBAction func pressEmail(_ sender: Any) {
        let button = sender as! UIButton
        button.vibrate()
        
    }
}
