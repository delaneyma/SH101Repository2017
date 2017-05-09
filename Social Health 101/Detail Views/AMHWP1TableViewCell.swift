//
//  AMHWP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/28/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class AMHWP1TableViewCell: UITableViewCell {

    @IBOutlet weak var AMHWP1TitleLabel: UILabel!
    @IBOutlet weak var AMHWP1ContLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
