//
//  SNAPP4TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SNAPP4TableViewCell: UITableViewCell {
   
    
    
    
    @IBAction func SNAPP4LinkAction1(_ sender: Any) {
        
        if let phoneCallURL = URL(string: "telprompt://\(18004323009 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }

    
    
    
    @IBOutlet weak var SNAPP4TitleLabel: UILabel!
    
    @IBOutlet weak var SNAPP4ContLabel1: UILabel!
    
    @IBOutlet weak var SNAPP4ContLabel2: UILabel!
    @IBOutlet weak var SNAPP4Link: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
