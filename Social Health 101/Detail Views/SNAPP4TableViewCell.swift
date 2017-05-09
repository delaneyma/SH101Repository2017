//
//  SNAPP4TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SNAPP4TableViewCell: UITableViewCell {

    @IBOutlet weak var SNAPP4TitleLabel: UILabel!
    
    @IBOutlet weak var SNAPP4ContLabel1: UILabel!
    
    @IBOutlet weak var SNAPP4ContLabel2: UILabel!
    @IBOutlet weak var SNAPP4Link: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
