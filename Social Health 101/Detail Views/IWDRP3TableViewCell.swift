//
//  IWDRP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/30/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class IWDRP3TableViewCell: UITableViewCell {

    @IBOutlet weak var IWDRP3TitleLabel: UILabel!
    @IBOutlet weak var IWDRP3ContLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
