//
//  ExampleTableViewController.swift
//  TextFieldEffects
//
//  Created by Raúl Riera on 28/08/2015.
//  Copyright © 2015 Raul Riera. All rights reserved.
//

import UIKit
import TextFieldEffects

class ExampleTableViewController : UITableViewController {
    
    @IBOutlet private var textFields: [TextFieldEffects]!
    
    
    @IBOutlet private var textFields1: AkiraTextField!
    /**
    Set this value to true if you want to see all the "firstName"
    textFields prepopulated with the name "Raul" (for testing purposes)
    */
    let prefillTextFields = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFields1.borderLayer.backgroundColor = UIColor.white.cgColor
       
        guard prefillTextFields == true else { return }
        
        _ = textFields.map { $0.text = "Raul" }
        
      
    }
}
