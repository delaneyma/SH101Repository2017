//
//  CACCP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class CACCP1TableViewCell: UITableViewCell {
    @IBOutlet weak var CACCP1TitleLabel: UILabel!
    @IBOutlet weak var CACCP1ContLabel1: UILabel!
    @IBOutlet weak var CACCP1ContLabel2: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
