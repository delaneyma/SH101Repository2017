//
//  HEAPP9TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/7/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class HEAPP9TableViewCell: UITableViewCell {

    @IBAction func HEAPP9(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16318538326 as Int64)") {
            
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
