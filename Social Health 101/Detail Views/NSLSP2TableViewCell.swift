//
//  NSLSP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class NSLSP2TableViewCell: UITableViewCell {

    @IBOutlet weak var NSLSP2TitleLabel: UILabel!
    @IBOutlet weak var NSLSP2TitleLabel2: UILabel!
    @IBOutlet weak var NSLSP2TitleLabel3: UILabel!
    @IBOutlet weak var NSLSP2ContLabel2: UILabel!
    
    
    @IBOutlet weak var NSLSP2ContLabel1: UILabel!
    @IBOutlet weak var NSLSP2ContLabel3: UILabel!
    @IBOutlet weak var NSLSP2ContLabel4: UILabel!
    @IBOutlet weak var NSLSP2ContLabel5: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
