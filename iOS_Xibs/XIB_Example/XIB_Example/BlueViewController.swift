//
//  BlueViewController.swift
//  XIB_Example
//
//  Created by Leen AlShenibr on 11/30/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    
    var msg = "You can change my value"
    
    @IBOutlet var msgLabel: UILabel!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide buttons if there's no navigation controller
        if (self.navigationController == nil)
        {
            redButton.hidden = true
            greenButton.hidden = true
        }
        
        // Set message
        self.msgLabel.text = msg
    }
    
    @IBAction func goToRed(sender: AnyObject) {
        
        // Load View
        let redController:RedViewController = RedViewController(nibName: "RedViewController", bundle: nil)
        
        // Set message
        redController.msg = "From Blue"
        
        // Push View
        self.navigationController?.pushViewController(redController, animated: false)
    }
    
    @IBAction func goToGreen(sender: AnyObject) {
        
        // Load View
        let greenController:GreenViewController = GreenViewController(nibName: "GreenViewController", bundle: nil)
        
        // Set Message
        greenController.msg = "From Blue"
        
        // Push View
        self.navigationController?.pushViewController(greenController, animated: false)
    }
    
}
