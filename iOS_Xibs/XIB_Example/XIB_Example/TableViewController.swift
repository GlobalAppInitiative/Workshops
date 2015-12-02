//
//  TableViewController.swift
//  XIB_Example
//
//  Created by Leen AlShenibr on 11/30/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // Cell Data
    var items = ["one", "two", "three", "four", "five"]
    var items2 = [1, 2, 3, 4, 5]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register cell
        let nib = UINib(nibName: "TableViewCell", bundle:  NSBundle.mainBundle())
        self.tableView.registerNib(nib, forCellReuseIdentifier: "xib_cell")
        
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //Get Cell
        let cell = tableView.dequeueReusableCellWithIdentifier("xib_cell", forIndexPath: indexPath) as! TableViewCell
        
        // Get itesm
        let item1 = items[indexPath.row]
        let item2 = items2[indexPath.row]
        
        // Set cell labels
        cell.itemLabel?.text = item1
        cell.item2Label?.text = item2.description

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //You have to set the height manually or get it from xib
        return 105 //(Your custom height goes here)
    }

    
}
