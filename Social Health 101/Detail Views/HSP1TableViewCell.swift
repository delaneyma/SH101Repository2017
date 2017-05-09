//
//  HSP1TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class HSP1TableViewCell: UITableViewCell {

    @IBOutlet weak var HSP1TitleCell: UILabel!
    @IBOutlet weak var HSP1ContLabel: UILabel!
    @IBOutlet weak var HSP1Link: UIButton!
    
    
    @IBAction func HSP1LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://www.shelterlistings.org/county/ny-suffolk-county.html") {
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
