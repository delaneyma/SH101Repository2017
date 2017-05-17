//
//  IAPP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/14/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class IAPP3TableViewCell: UITableViewCell {
    @IBAction func IAPP3LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://www.suffolkcountyny.gov/Departments/HealthServices/PatientCare/ImmunizationActionProgram.aspx") {
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
