//
//  MRTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MRTableViewController: UITableViewController {

     var VCName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MRP1", for: indexPath)as! MRP1TableViewCell
            cell.MRP1TitleLabel.text = "What is it?"
            cell.MRP1ContLabel.text = "Make The Road New York – Brentwood is one of two New York State Office of New Americans Opportunity Centers located on Long Island."
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MRP2", for: indexPath) as! MRP2TableViewCell
            cell.MRP2ContLabel.text = "Since 2011, Make the Road has worked to create opportunities for meaningful political participation for immigrant Long Islanders, both to address the wave of hate crimes on the rise throughout the county, and to build the political power necessary to reform public policies that address the needs of those growing immigrant communities."
            return cell
        }
            
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MRP3", for: indexPath)as! MRP3TableViewCell
            cell.MRP3TitleLabel.text = "Contact information:"
            cell.MRP3ContLabel1.text = " Information and resources are available online as well as at the following address and phone number"
            cell.MRP3ContLabel2.text = " Ph: 631) 231-2220, Fax:(631) 231-2229, Address: 1090 Suffolk Avenue."
            
            return cell}
    }
   
    
    // http://www.maketheroad.org/ or in person at:
    
 
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Make the Road - New York"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    
}
