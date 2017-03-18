//
//  RootViewController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/30/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UIViewController {
    
       let tylerOrange = UIColor(colorLiteralRed: 250/255, green: 162/255, blue: 18/255, alpha: 1.0)
    
    @IBOutlet weak var graphDemoSegue: UIButton!
    
    @IBOutlet weak var demoDetailSegue: UIButton!
    @IBOutlet weak var callDetailSegue: UIButton!
    
    @IBOutlet weak var addCustomerSegue: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = tylerOrange
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Avenir-Heavy", size: 19)!]
        
    }
    
}
