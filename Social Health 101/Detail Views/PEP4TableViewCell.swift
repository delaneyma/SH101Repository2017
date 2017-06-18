//
//  PEP4TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class PEP4TableViewCell: UITableViewCell {

    @IBOutlet weak var PEP4TitleLabel: UILabel!
    @IBOutlet weak var PEP4ContLabel: UILabel!
    
    @IBAction func PEP4LinkAction(_ sender: Any) {
        
        if let phoneCallURL = URL(string: "telprompt://\(16319523333 as Int64)") {
            
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
