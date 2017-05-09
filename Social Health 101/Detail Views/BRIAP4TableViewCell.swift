//
//  BRIAP4TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class BRIAP4TableViewCell: UITableViewCell {
    @IBOutlet weak var BRIAP4TitleLabel: UILabel!
    @IBOutlet weak var BRIAP4ContLabel1: UILabel!
    @IBOutlet weak var BRIAP4ContLabel2: UILabel!
    @IBOutlet weak var BRIAP4ContLabel3: UILabel!
    @IBOutlet weak var BRIAP4ContLabel4: UILabel!
    @IBOutlet weak var BRIAP4Link: UIButton!

    @IBAction func BRIAP4LinkAction(_ sender: Any) {
        if let url = NSURL(string: "https://otda.ny.gov/programs/bria/#") {
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
