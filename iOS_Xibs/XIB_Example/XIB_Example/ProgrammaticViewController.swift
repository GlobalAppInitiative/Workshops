//
//  ViewController.swift
//  XIB_Example
//
//  Created by Leen AlShenibr on 11/30/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit

class ProgrammaticViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let image = UIImage(named: "photo")

        // Code to resize image
        let size = 50.0 as CGFloat
        let rect:CGRect = CGRectMake(0,0,size,size);
        UIGraphicsBeginImageContext( rect.size );
        image?.drawInRect(rect)
         let resized_image:UIImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();

        // Load viewController & Set navigation controller
        let redNav = UINavigationController()
        let red = RedViewController(nibName: "RedViewController", bundle: nil)
        redNav.viewControllers = [red]
        
        // Set bar settings
        red.tabBarItem.image = resized_image
        red.tabBarItem.title = "Red"

        // Load viewController & Set navigation controller
        let blueNav = UINavigationController()
        let blue = BlueViewController(nibName: "BlueViewController", bundle: nil)
        blueNav.viewControllers = [blue]
        
        // Set bar settings
        blue.tabBarItem.image = resized_image
        blue.tabBarItem.title = "blue"
        
        
        // Create Tabcontroller
        let tabs = UITabBarController()

        tabs.viewControllers = [redNav, blueNav]
        
        // Presnet the TabBarController
        self.presentViewController(tabs, animated: false, completion: nil)
    }



}

