//
//  RMHP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/14/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class RMHP3TableViewCell: UITableViewCell {

    
    @IBAction func RMHP3LinkAction(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(15167755683)") {
            
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
