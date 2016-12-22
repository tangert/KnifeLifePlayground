//
//  ContactController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/21/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit

class ContactController: UIViewController {
    
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var demoBtn: UIButton!
    var demoIsPressed = false
    let buttonPressColor = UIColor(colorLiteralRed: 250/255, green: 162/255, blue: 18/255, alpha: 0.75)
    
    @IBOutlet weak var callsAnsweredData: UILabel!
    @IBOutlet weak var lastCallData: UILabel!
    @IBOutlet weak var lastDemoData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demoBtn.layer.borderWidth = 1
        demoBtn.layer.borderColor = UIColor.lightGray.cgColor
        demoBtn.layer.cornerRadius = 20
        
        formatDataLabel(label: callsAnsweredData)
        formatDataLabel(label: lastCallData)
        formatDataLabel(label: lastDemoData)
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
    }
    
    func formatDataLabel(label: UILabel) {
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.lightGray.cgColor
        label.layer.cornerRadius = 10
    }
    
    @IBAction func demoPressed(_ sender: Any) {
        
        if demoIsPressed == false{
            
            DatePickerDialog().show("Set demo date", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", datePickerMode: .date) {
                (date) -> Void in
                
                if (date != nil) {
                    self.demoBtn.titleLabel?.text! = "Demo: \(date)"
                }
            }
            
            UIView.animate(withDuration: 0.25, animations: {
                self.demoBtn.layer.backgroundColor = self.buttonPressColor.cgColor
                self.demoBtn.layer.borderColor = self.buttonPressColor.cgColor
                self.demoBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
            })
            
            demoIsPressed = true
            
        } else {
            UIView.animate(withDuration: 0.25, animations: {
                self.demoBtn.titleLabel?.text! = "SET DEMO"
                self.demoBtn.layer.borderColor = UIColor.lightGray.cgColor
                self.demoBtn.layer.backgroundColor = nil
                self.demoBtn.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
            })
            demoIsPressed = false
        }
    }
    
}
