//
//  ONAP4TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class ONAP4TableViewCell: UITableViewCell {
    @IBOutlet weak var ONAP4TitleLabel: UILabel!
    @IBOutlet weak var ONAP4ContLabel: UILabel!
    @IBOutlet weak var ONAP4Link: UIButton!

    @IBAction func ONAP4LinkAction(_ sender: Any) {
        if let url = NSURL(string: "https://www.newamericans.ny.gov/opportunity/opportunity_centers.html") {
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
