//
//  myTableViewCell.swift
//  LoadTable
//
//  Created by CTS_DEP_AMM00217 on 12/01/17.
//  Copyright © 2017 CTS_DEP_AMM00217. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet var myLabel1: UILabel!
    
    @IBOutlet var myImage: UIImageView!
    
    @IBOutlet var logoImage: UIImageView!
       override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
