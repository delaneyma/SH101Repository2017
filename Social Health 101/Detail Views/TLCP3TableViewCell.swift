//
//  TLCP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class TLCP3TableViewCell: UITableViewCell {

    
    @IBAction func TLCP3LinkAction1(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16317617470 as Int64)") {
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }
    
    
    
    @IBOutlet weak var TLCP3TitleLabel: UILabel!
    @IBOutlet weak var TLCP3ContLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
