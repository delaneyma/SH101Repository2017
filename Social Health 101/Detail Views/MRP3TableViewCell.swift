//
//  MRP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MRP3TableViewCell: UITableViewCell {

    @IBOutlet weak var MRP3TitleLabel: UILabel!
    @IBOutlet weak var MRP3ContLabel1: UILabel!
    @IBOutlet weak var MRP3ContLabel2: UILabel!
    @IBOutlet weak var MRP3Link: UIButton!
    
    @IBAction func MRP3LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://www.maketheroad.org/") {
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
