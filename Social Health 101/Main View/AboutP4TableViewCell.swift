//
//  AboutP4TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/10/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class AboutP4TableViewCell: UITableViewCell {

    @IBOutlet weak var AboutP4TitleLabel: UILabel!
    @IBOutlet weak var AboutP4Image: UIImageView!
    @IBOutlet weak var AboutP4Label: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
