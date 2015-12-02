//
//  RedViewController.swift
//  XIB_Example
//
//  Created by Leen AlShenibr on 11/30/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    var msg = "You can change my value"

    
    @IBOutlet  var msgLabel: UILabel!
    
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide buttons if there's no navigation controller
        if (self.navigationController == nil)
        {
            blueButton.hidden = true
            greenButton.hidden = true
        }
        
        // Set message
        self.msgLabel?.text = msg
        
    }
    
    @IBAction func goToBlue(sender: AnyObject) {
        
        //Load view
        let blueController:BlueViewController = BlueViewController(nibName: "BlueViewController", bundle: nil)
        
        // Change msg
        blueController.msg = "From Red"
        
        // Push view
        self.navigationController?.pushViewController(blueController, animated: false)
    }
    
    @IBAction func goToGreen(sender: AnyObject) {
        
        //Load view
        let greenController:GreenViewController = GreenViewController(nibName: "GreenViewController", bundle: nil)
        
        // Change msg
        greenController.msg = "From Red"
        
        // Push view
        self.navigationController?.pushViewController(greenController, animated: false)
    }

}
