//
//  RDVSP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class RDVSP1TableViewCell: UITableViewCell {
    @IBOutlet weak var RDVSP1TitleLabel: UILabel!
    @IBOutlet weak var RDVSP1ContLabel: UILabel!
    @IBOutlet weak var RDVSP1Image: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
