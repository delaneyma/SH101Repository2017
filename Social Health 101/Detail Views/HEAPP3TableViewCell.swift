//
//  HEAPP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class HEAPP3TableViewCell: UITableViewCell {
    @IBOutlet weak var HEAPP3TitleLabel: UILabel!
    @IBOutlet weak var HEAPP3ContLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
