//
//  DHHP5TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/17/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class DHHP5TableViewCell: UITableViewCell {

    
    @IBAction func DHHP5LinkAction1(_ sender: Any) {
        
        if let phoneCallURL = URL(string: "telprompt://\(15168765450)") {
            
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
