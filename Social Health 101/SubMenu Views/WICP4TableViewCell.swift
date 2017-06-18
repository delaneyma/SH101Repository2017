//
//  WICP4TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/14/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class WICP4TableViewCell: UITableViewCell {

    @IBAction func WICP4WebLink(_ sender: Any) {
        if let url = NSURL(string: "http://www.suffolkcountyny.gov/Departments/HealthServices/PatientCare/WICProgram.aspx") {
            UIApplication.shared.open(url as URL, options: [:])}
    }
    @IBAction func WICP4CallAction(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(18005225006 as Int64)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }

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
