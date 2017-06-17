//
//  LICCP5TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/5/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LICCP5TableViewCell: UITableViewCell {

    @IBAction func LICCP5LinkAction(_ sender: Any) {
    
    
    if let url = NSURL(string: "http://longislandcrisiscenter.org/") {
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
