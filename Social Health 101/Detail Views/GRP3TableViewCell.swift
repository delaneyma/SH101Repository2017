//
//  GRP3TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class GRP3TableViewCell: UITableViewCell {
    @IBOutlet weak var GRP3TitleLabel: UILabel!
    @IBOutlet weak var GRP3ContLabel: UILabel!
    @IBOutlet weak var GRP3ContLabel2: UILabel!

    @IBOutlet weak var GRP3Link: UIButton!
    
    @IBAction func GRP3LinkAction(_ sender: Any) {
        if let url = NSURL(string: "http://www.goodrx.com/") {
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
