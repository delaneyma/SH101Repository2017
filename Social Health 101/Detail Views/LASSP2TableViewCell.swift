//
//  LASSP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LASSP2TableViewCell: UITableViewCell {

    @IBOutlet weak var LASSP2TitleLabel: UILabel!
    @IBOutlet weak var LASSP2ContLabel: UILabel!
    @IBOutlet weak var LASSP2ContLabel2: UILabel!
    
    
    
    
    @IBAction func LASSP2DCLinkAction1(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16318535212  as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }
 
    
    
    
    @IBAction func LASSP2FCLinkAction2(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16318534343 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }

    
    
    
    
    @IBAction func LASSP2CCLinkAction3(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(16314392450 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)}}
    }

    
    
    
    @IBAction func LASSP2WEBLinkAction4(_ sender: Any) {
        if let url = NSURL(string: "http://www.SCLAS.org/") {
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
