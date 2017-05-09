//
//  RMRP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/4/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class RMRP3TableViewCell: UITableViewCell {

    @IBOutlet weak var RMRP3TitleLabel: UILabel!
    
    
    @IBAction func RMRP3LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://rmhlongisland.org/family-room/") {
            UIApplication.shared.open(url as URL, options: [:])}
    }
    

    @IBAction func RMRP3Link2Action(_ sender: Any) {
        if let url = NSURL(string: "https://www.stonybrookchildrens.org/specialties-services/supportive-services/ronald_mcdonald") {
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
