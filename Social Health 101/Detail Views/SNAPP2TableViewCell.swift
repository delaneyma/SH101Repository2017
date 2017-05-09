//
//  SNAPP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SNAPP2TableViewCell: UITableViewCell {
    @IBOutlet weak var SNAPP2TitleLabel: UILabel!
    @IBOutlet weak var SNAPP2ContLabel1: UILabel!
    @IBOutlet weak var SNAPP2ContLabel2: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
