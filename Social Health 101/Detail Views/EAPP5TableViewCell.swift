//
//  EAPP5TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class EAPP5TableViewCell: UITableViewCell {
    @IBOutlet weak var EAPP5TitleLabel: UILabel!
    @IBOutlet weak var EAPP5ContLabel1: UILabel!
    @IBOutlet weak var EAPP5ContLabel2: UILabel!
    @IBOutlet weak var EAPP5ContLabel3: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
