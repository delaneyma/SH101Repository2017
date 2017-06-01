//
//  VIBSP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/28/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class VIBSP2TableViewCell: UITableViewCell {

    @IBOutlet weak var VIBSP2ContLabel: UILabel!
    

    
  
    @IBOutlet weak var VIBSLink: UIButton!


    
    @IBAction func VIBSP2LinkAction(_ sender: Any) { if let url = NSURL(string: "http://www.vibs.org/") {
            UIApplication.shared.open(url as URL, options: [:])}}

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
