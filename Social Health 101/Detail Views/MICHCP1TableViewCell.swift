//
//  MICHCP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/25/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MICHCP1TableViewCell: UITableViewCell {
    @IBOutlet weak var MICHCP1TitleLabel: UILabel!
    @IBOutlet weak var MICHCP1ContLabel1: UILabel!
    @IBOutlet weak var MICHCP1ContLabel2: UILabel!
    @IBOutlet weak var MICHCP2Image: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
