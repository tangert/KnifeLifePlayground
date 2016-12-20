//
//  AddContactController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 12/18/16.
//  Copyright © 2016 Tyler Angert. All rights reserved.
//

import UIKit

class AddContactController: UIViewController {

    //IBOutlets
    @IBOutlet weak var importButton: UIButton!
    
    //I like this orange.
    let tylerOrange = UIColor(colorLiteralRed: 233/255, green: 157/255, blue: 31/255, alpha: 1.0).cgColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //import button setup
        importButton.layer.cornerRadius = 20
        importButton.layer.borderWidth = 1
        importButton.layer.borderColor = tylerOrange
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
    }

}
