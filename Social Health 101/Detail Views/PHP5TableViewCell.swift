//
//  PHP5TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/6/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class PHP5TableViewCell: UITableViewCell {
    
    @IBAction func PHP5LinkAction(_ sender: Any) {
    if let url = NSURL(string: "https://www.phoenixhouse.org/") {
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
