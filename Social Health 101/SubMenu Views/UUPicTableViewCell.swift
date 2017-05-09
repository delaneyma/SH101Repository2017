//
//  UUPicTableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/22/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class UUPicTableViewCell: UITableViewCell {
    @IBOutlet weak var UUPicImage: UIImageView!
    @IBOutlet weak var UUPicLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
