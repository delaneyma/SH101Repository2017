//
//  NMP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class NMP3TableViewCell: UITableViewCell {
    @IBOutlet weak var NMP3TitleLabel: UILabel!
   
    
    @IBAction func NMP3LinkAction2(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(18005036897  as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}

    }
    

    @IBOutlet weak var NMP3Link: UIButton!
    
    @IBAction func NMP3LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://www.needymeds.org/") {
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
