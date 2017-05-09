//
//  FPTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class FPTableViewController: UITableViewController {

    
    var VCName = ""
    var FPP2TitlesArray = ["P1", " ", "Island Harvest Food Pantry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 150
//   
//        FPLocLink.addTarget(self, action: #selector(FPLinkAction), for: .touchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
//    @IBOutlet weak var FPLocLink: UIButton!
//    
//    @IBAction func FPLinkAction(_ sender: Any) {
//        UIApplication.shared.openURL(URL(string: "https://www.stackoverflow.com")!)
//    }
    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FPP1", for: indexPath) as! FPP1TableViewCell
            
            cell.FPP1TitleLabel.text = "Where are they?"
            
            return cell}
        
        
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FPP2", for: indexPath) as! FPP2TableViewCell
            cell.FPP2TitleLabel.text = "Long Island Cares Food Locator"
            cell.FPP2ContLabel.text = "For more information, call 631-582-FOOD."
            
//            cell.FPP2Link
            
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FPP3", for: indexPath) as! FPP3TableViewCell
            cell.FPP3TitleLabel.text = "Island Harvest Food Pantry:"
  
//            cell.FPP3Button.addTarget(self, action: #selector(FPP3LinkAction), for: .touchUpInside)
//            
//            func FPP3LinkAction(_ sender: Any) {
//                        UIApplication.shared.openURL(URL(string: "https://www.stackoverflow.com")!)
//                    }
            
            
            return cell
        }
    }
    
    
//
//    func FPP3LinkAction() {
//        UIApplication.shared.openURL(URL(string: "https://www.stackoverflow.com")!)
//    }
    
    
    
    
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Food Pantries"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
    
}
