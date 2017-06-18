//
//  PEP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/28/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class PEP3TableViewCell: UITableViewCell {

    
    @IBAction func PEP3LinkAction(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16314446050 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }
    
    
    
    
    
    @IBOutlet weak var PEP3TitleLabel: UILabel!
    @IBOutlet weak var PEP3ContLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
