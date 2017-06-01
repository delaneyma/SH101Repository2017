//
//  CPSP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class CPSP2TableViewCell: UITableViewCell {
    
    @IBAction func CPSP2LinkAction(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(18003423720)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }
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
