//
//  FFLP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/27/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class FFLP1TableViewCell: UITableViewCell {

    @IBOutlet weak var FFLP1TitleLabel: UILabel!
    
    @IBOutlet weak var FFLP1ContLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
