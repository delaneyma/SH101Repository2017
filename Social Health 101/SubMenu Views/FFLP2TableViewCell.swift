//
//  FFLP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class FFLP2TableViewCell: UITableViewCell {

    @IBAction func FFLP2LinkAction(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16312653300 as Int64)") {
            
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
