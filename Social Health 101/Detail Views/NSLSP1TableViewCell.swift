//
//  NSLSP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class NSLSP1TableViewCell: UITableViewCell {

    @IBOutlet weak var NSLSP1TitleLabel: UILabel!
    @IBOutlet weak var NSLSP1ContLabel1: UILabel!
    
    @IBOutlet weak var NSLSP1ContLabel2: UILabel!
    
    @IBOutlet weak var NSLSP1ContLabel3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
