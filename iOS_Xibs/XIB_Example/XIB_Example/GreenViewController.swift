//
//  GreenViewController.swift
//  XIB_Example
//
//  Created by Leen AlShenibr on 11/30/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
    var msg = "You can change my value"
    
    @IBOutlet var msgLabel: UILabel!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide buttons if there's no navigation controller
        if (self.navigationController == nil)
        {
            redButton.hidden = true
            blueButton.hidden = true
        }
        
        // Set message
        self.msgLabel.text = msg
        
    }
    
    
    @IBAction func goToRed(sender: AnyObject) {
        
        // Load View
        let redController:RedViewController = RedViewController(nibName: "RedViewController", bundle: nil)
        
        // Change msg
        redController.msg = "From Green"
        
        // Push view
        self.navigationController?.pushViewController(redController, animated: false)
    }
    
    
    @IBAction func goToBlue(sender: AnyObject) {
        
        // Load View
        let blueController:BlueViewController = BlueViewController(nibName: "BlueViewController", bundle: nil)
        
        // Change msg
        blueController.msg = "From Green"
        
        // Push View
        self.navigationController?.pushViewController(blueController, animated: false)
    }
    
    
}
