//
//  KFHProto3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/4/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class KFHProto3TableViewCell: UITableViewCell {

    @IBOutlet weak var KFHP3TitleLabel: UILabel!
    
    @IBOutlet weak var KFHP3ContLabel: UILabel!
    
    @IBOutlet weak var KFHP3Link: UIButton!
    
    @IBAction func KFHP3LinkAction(_ sender: Any) {
        if let url = NSURL(string: "https://www.stonybrookchildrens.org/specialties-services/supportive-services/healthy_family") {
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
