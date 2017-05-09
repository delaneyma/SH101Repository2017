//
//  NMP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class NMP2TableViewCell: UITableViewCell {
    @IBOutlet weak var NMP2TitleLabel: UILabel!
    @IBOutlet weak var NMP2ContLabel1: UILabel!
    @IBOutlet weak var NMP2ContLabel2: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
