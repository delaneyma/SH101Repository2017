//
//  SNAPP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SNAPP3TableViewCell: UITableViewCell {
    @IBOutlet weak var SNAPP3TitleLabel: UILabel!

    @IBOutlet weak var SNAPP3ContLabel: UILabel!
  
    
    @IBAction func SNAPP3Link1Action(_ sender: Any) {
        if let url = NSURL(string: "https://www.fns.usda.gov/snap/eligibility") {
            UIApplication.shared.open(url as URL, options: [:])}
    }
 

    @IBAction func SNAPP3LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://www.snap-step1.usda.gov/fns/") {
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
