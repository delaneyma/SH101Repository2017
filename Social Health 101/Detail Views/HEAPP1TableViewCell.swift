//
//  HEAPP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class HEAPP1TableViewCell: UITableViewCell {
    @IBOutlet weak var HEAPP1TitleLabel: UILabel!
    @IBOutlet weak var HEAPP1ContLabel: UILabel!
    @IBOutlet weak var HEAPP1Image: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
