//
//  BTSP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/7/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class BTSP3TableViewCell: UITableViewCell {

    
    
    
    @IBAction func BTSP3LinkAction1(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16313951800 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }
    
    
    
    
    @IBAction func BTSP3LinkAction2(_ sender: Any) {
        if let url = NSURL(string: "http://www.brightertomorrowsinc.org/") {
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
