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
    
//    @IBAction func VIBSLink(_ sender: Any) { tapAction?(self)
//        
//    }

//    
//     var tapAction: ((UITableViewCell) -> Void)?

    
  
    @IBOutlet weak var VIBSLink: UIButton!
//    @IBAction func VIBSP2Link(_ sender: Any) {
//        if let url = URL(string: "http://www.vibs.org/"){
//            UIApplication.shared.open(url)
//        }}

    
//    @IBOutlet weak var VIBSLink: UIButton!

//    func LinkAction1 (sender: UIButton!) {
//        if let url = URL(string: "http://www.vibs.org/"){
//            UIApplication.shared.open(url)
//        }}

    
    @IBAction func VIBSP2LinkAction(_ sender: Any) { if let url = NSURL(string: "http://www.vibs.org/") {
            UIApplication.shared.open(url as URL, options: [:])}}
    
//    
//    @IBAction func VIBSWebLink(_ sender: Any) {
//         UIApplication.shared.URL(URL(string: "http://www.stackoverflow.com")!)
//    }
    
    
//    if let url = URL(string: "www.google.com") {
//        UIApplication.shared.open(url, options: [:])
//    }
//    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
