//
//  MICHCP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/11/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MICHCP3TableViewCell: UITableViewCell {
    @IBOutlet weak var MICHCP3TitleLabel: UILabel!
    @IBOutlet weak var MICHCP3ContLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
