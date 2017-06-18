//
//  SBHOMEP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SBHOMEP2TableViewCell: UITableViewCell {

    @IBOutlet weak var SBHOMEP2TitleLabel: UILabel!
    
    @IBOutlet weak var SBHOMEP2ContLabel1: UILabel!
    
    @IBOutlet weak var SBHOMEP2ContLabel2: UILabel!

    
    @IBAction func SBHOMEP2LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://www.stonybrookhome.com") {
            UIApplication.shared.open(url as URL, options: [:])}
    }
    
    
    
    @IBAction func SBHOMEP2LinkAction2(_ sender: Any) {
        
        if let phoneCallURL = URL(string: "telprompt://\(16312355281 as Int64)") {
            
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
