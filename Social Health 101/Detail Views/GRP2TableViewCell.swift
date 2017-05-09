//
//  GRP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class GRP2TableViewCell: UITableViewCell {
    @IBOutlet weak var GRP2TitleLabel: UILabel!
    @IBOutlet weak var GRP2ContLabel1: UILabel!
    @IBOutlet weak var GRP2ContLabel2: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
