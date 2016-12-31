//
//  CallDetailController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/29/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit

class CallDetailController: UIViewController {
    
    @IBOutlet weak var callerNameLabel: UILabel!
    @IBOutlet weak var callLengthLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var notesField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
