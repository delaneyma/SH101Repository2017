//
//  MainTableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/17/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    @IBOutlet weak var MainTitles: UILabel!
    @IBOutlet weak var MainSubtitles: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
