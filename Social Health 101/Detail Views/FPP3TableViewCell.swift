//
//  FPP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class FPP3TableViewCell: UITableViewCell {

    @IBOutlet weak var FPP3TitleLabel: UILabel!
    
    @IBOutlet weak var FPP3Button: UIButton!
    
    @IBAction func FPP3LinkAction(_ sender: Any) {
       
        if let url = NSURL(string: "http://www.islandharvest.org/resources/food-locator/") {
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
