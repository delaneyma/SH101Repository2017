//
//  FPP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class FPP2TableViewCell: UITableViewCell {

    @IBOutlet weak var FPP2TitleLabel: UILabel!
    @IBOutlet weak var FPP2ContLabel: UILabel!
    @IBOutlet weak var FPP2Link: UIButton!
    
    
    @IBAction func FPP2LinkAction(_ sender: Any) {
        if let url = NSURL(string: "https://www.licares.org/find-help/food-locator/") {
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
