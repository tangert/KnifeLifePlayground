//
//  DemoDetailController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/29/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit

class DemoDetailController: UIViewController {
    @IBOutlet weak var customerNameLabel: UILabel!
    @IBOutlet weak var demoDateLabel: UILabel!
    @IBOutlet weak var demoTimeLabel: UILabel!
    
    @IBOutlet weak var notesField: UITextView!
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
