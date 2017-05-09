//
//  RMRP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/25/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class RMRP2TableViewCell: UITableViewCell {

    @IBOutlet weak var RMRP2TitleLabel: UILabel!
    @IBOutlet weak var RMRP2ContLabel: UILabel!
    
    @IBAction func RMRP2LinkAction(_ sender: Any) {
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
