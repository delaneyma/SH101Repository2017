//
//  SCMHP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SCMHP3TableViewCell: UITableViewCell {

    
    @IBAction func SCMHP3LinkAction(_ sender: Any) {
    if let phoneCallURL = URL(string: "telprompt://\(16318542552)") {
        
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
