//
//  PEP5TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class PEP5TableViewCell: UITableViewCell {

    @IBOutlet weak var PEP5TitleLabel: UILabel!
    @IBOutlet weak var PEP5ContLabel: UILabel!
    
    @IBAction func PEP5LinkAction1(_ sender: Any) {
        
        if let phoneCallURL = URL(string: "telprompt://\(18002738255 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
        
    }
    
    @IBAction func PEP5LinkAction2(_ sender: Any) {
        
        if let url = NSURL(string: "https://suicidepreventionlifeline.org/") {
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
