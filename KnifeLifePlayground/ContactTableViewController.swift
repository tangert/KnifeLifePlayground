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

        self.tableView.allowsSelection = false
        //prevents scrolling for static content
        self.tableView.isScrollEnabled = false
        self.tableView.contentInset = UIEdgeInsetsMake(-100, 0, 0, 0)
    }
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var navButton: UIButton!
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    @IBAction func pressPhone(_ sender: Any) {
        let button = sender as! UIButton
        button.vibrate()
        
        
    }
    
    @IBAction func pressNav(_ sender: Any) {
        let button = sender as! UIButton
        button.vibrate()
        
        
    }
    
    @IBAction func pressMail(_ sender: Any) {
        
        let button = sender as! UIButton
        button.vibrate()
        
        let email = emailLabel.text
        if let url = URL(string: "mailto://\(email!)") {
            print(url)
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
}
