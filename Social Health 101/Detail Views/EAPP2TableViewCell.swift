//
//  EAPP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class EAPP2TableViewCell: UITableViewCell {
    @IBOutlet weak var EAPP2TitleLabel: UILabel!
    @IBOutlet weak var EAPP2ContLabel1: UILabel!
    @IBOutlet weak var EAPP2ContLabel2: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
