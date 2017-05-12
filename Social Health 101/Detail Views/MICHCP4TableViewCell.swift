//
//  MICHCP4TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/11/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MICHCP4TableViewCell: UITableViewCell {

    @IBOutlet weak var MICHCP4ContLabel: UILabel!

    @IBAction func MICHCP4LinkAction(_ sender: Any) {
        
        if let phoneCallURL = URL(string: "tel://\(16318544023)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }
        
        
//        guard let number = URL(string: "telprompt://\(6318544023)"
//            else { return },
//        UIApplication.shared.open(number, options: [:], completionHandler: nil)
        
//        if let url = NSURL(string: "telprompt://\(6318544023)") {
//            UIApplication.shared.open(url as URL, options: [:])}
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
