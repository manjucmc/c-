//
//  MyTableViewCell.swift
//  ToDoListApp
//
//  Created by Shubha Manjunath on 10/19/15.
//  Copyright © 2015 Shubha Manjunath. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellItemName: UILabel!
    @IBOutlet var cellItemType: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
