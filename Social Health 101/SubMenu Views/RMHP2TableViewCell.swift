//
//  RMHP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/24/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class RMHP2TableViewCell: UITableViewCell {
    @IBOutlet weak var RMHP2Image: UIImageView!
    @IBOutlet weak var RMHP2Label: UILabel!
    @IBOutlet weak var RMHP2ContLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
