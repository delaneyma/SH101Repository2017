//
//  KFHProto1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/23/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class KFHProto1TableViewCell: UITableViewCell {

    @IBOutlet weak var KFHP1TitleLabel: UILabel!
    
    @IBOutlet weak var KFHP1ContLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
