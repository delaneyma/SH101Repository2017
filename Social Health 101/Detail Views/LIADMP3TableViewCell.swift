//
//  LIADMP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LIADMP3TableViewCell: UITableViewCell {

    @IBOutlet weak var LIADMP3TitleLabel: UILabel!

    
    

    
    @IBAction func LIADMP3LinkAction1(_ sender: Any) {
    if let phoneCallURL = URL(string: "telprompt://\(16316668833 as Int64)") {
        
        let application:UIApplication = UIApplication.shared
        if (application.canOpenURL(phoneCallURL)) {
            application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }
    
    
    @IBAction func LIADMP3LinkAction2(_ sender: Any) {
    if let url = NSURL(string: "http://www.liadv.org/") {
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
