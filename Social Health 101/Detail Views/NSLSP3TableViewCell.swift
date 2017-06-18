//
//  NSLSP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 6/7/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class NSLSP3TableViewCell: UITableViewCell {

    @IBAction func NSLSP3LinkAction1(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(15162928100 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }

    
    @IBAction func NSLSP3LinkAction2(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16312322400 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }

    
    
    @IBAction func NSLSP3LinkAction3(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16313691112 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }
    
    
    
    
    @IBAction func NSLSP3WEBLinkAction4(_ sender: Any) {
        if let url = NSURL(string: "http://www.nslawservices.org/") {
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
