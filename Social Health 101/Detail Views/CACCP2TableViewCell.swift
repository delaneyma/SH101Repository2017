//
//  CACCP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class CACCP2TableViewCell: UITableViewCell {
    @IBOutlet weak var CACCP2TitleLabel: UILabel!
    @IBOutlet weak var CACCP2ContLabel1: UILabel!
    @IBOutlet weak var CACCP2ContLabel2: UILabel!
    @IBOutlet weak var CACCP2ContLabel3: UILabel!
    @IBOutlet weak var CACCP2ContLabel4: UILabel!

    @IBOutlet weak var CACCP2Link: UIButton!
    
    @IBAction func CACCP2LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://www.carecenny.org/") {
            UIApplication.shared.open(url as URL, options: [:])}
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
