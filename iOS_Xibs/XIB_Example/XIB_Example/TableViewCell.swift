//
//  TableViewCell.swift
//  XIB_Example
//
//  Created by Leen AlShenibr on 11/30/15.
//  Copyright © 2015 GAI. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var itemLabel:UILabel?
    var item2Label:UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Set variables
        itemLabel = self.contentView.viewWithTag(1)! as? UILabel
        item2Label = self.contentView.viewWithTag(2)! as? UILabel
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
