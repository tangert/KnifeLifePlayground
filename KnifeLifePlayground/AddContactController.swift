//
//  AddContactController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/18/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import UIKit
import Contacts

class AddContactController: UIViewController {

    //IBOutlets
    @IBOutlet weak var importButton: UIButton!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    //contacts shit
    
    
    //I like this orange.
    let tylerOrange = UIColor(colorLiteralRed: 233/255, green: 157/255, blue: 31/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navbar setup
        self.navigationController?.navigationBar.barTintColor = tylerOrange
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Avenir-Heavy", size: 19)!]
        
        //save button setup
        saveButton.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "Avenir-Book", size: 19)!], for: .normal)
        
        //import button setup
        importButton.layer.cornerRadius = 20
        importButton.layer.borderWidth = 1
        importButton.layer.borderColor = tylerOrange.cgColor
    }

    @IBAction func importContact(_ sender: Any) {
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
