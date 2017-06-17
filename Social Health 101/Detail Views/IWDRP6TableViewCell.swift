//
//  IWDRP6TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/6/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class IWDRP6TableViewCell: UITableViewCell {

    
    @IBAction func IWDRP6LinkAction(_ sender: Any) {
       
        if let phoneCallURL = URL(string: "telprompt://\(16316085317)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
        
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
