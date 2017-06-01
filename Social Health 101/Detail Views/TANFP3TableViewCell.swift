//
//  TANFP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class TANFP3TableViewCell: UITableViewCell {

    
    @IBAction func TANFP3LinkAction(_ sender: Any) {
    if let url = NSURL(string: "https://otda.ny.gov/programs/temporary-assistance/") {
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
