//
//  LICADDP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/30/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LICADDP1TableViewCell: UITableViewCell {
    @IBOutlet weak var LICADDP1TitleLabel: UILabel!

    @IBOutlet weak var LICADDP1ContLabel: UILabel!
    @IBOutlet weak var LICADDP1Image: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
