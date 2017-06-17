//
//  HEAPTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class HEAPTableViewController: UITableViewController {

    var VCName = ""
    var HEAPP6TitlesArray = ["P1", "P2", "P3", "P4", "P5", "Suffolk County Department of Social Services", "*i6*", "Suffolk County Office for the Aging","*i8*", "After Hours Emergency Contact", "*i10*" ]
    var HEAPP6ContArray = ["P1", "P2", "P3", "P4", "P5", "Days Open: Monday - Friday; Phone: (631) 853-8825; Address: PO Box 18100, 200 Wireless Boulevard, Hauppauge, NY 11788","*i6*" , "Days Open: Monday - Friday, Phone: (631) 853-8326, Address: PO Box 6100, 200 Wireless Boulevard, Hauppauge, NY 11788 ", "*i8*", "Emergency Services Phone: (631) 853-8326,", "*i10*"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 11
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP1", for: indexPath) as! HEAPP1TableViewCell
            cell.HEAPP1TitleLabel.text = "What is it?"
            cell.HEAPP1ContLabel.text = "The Home Energy Assistance Program (HEAP) helps low-income people pay the cost of heating their homes."
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP2", for: indexPath) as! HEAPP2TableViewCell
            cell.HEAPP2TitleLabel.text = "How does it work?"
            cell.HEAPP2ContLabel.text = "If eligible, recipients receive one regular HEAP benefit of up to $575 per season and could also be eligible for an emergency HEAP benefit if in impending danger of running out of fuel or having utility service shut off."
            return cell}
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP4", for: indexPath) as! HEAPP4TableViewCell
            cell.HEAPP4TitleLabel.text = "Who is eligible?"
            cell.HEAPP4ContLabel.text = "Eligibility and benefits are based on income, household size, the primary heating source, and the presence of a household member who is under age 6, age 60 or older or permanently disabled. You may be eligible for HEAP even if you own your home or pay for heat as part of your rent. The HEAP income guidelines are below:"
            return cell}
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP3", for: indexPath) as! HEAPP3TableViewCell
            cell.HEAPP3TitleLabel.text = "How to apply:"
            cell.HEAPP3ContLabel.text = "When the HEAP season is open (starting in mid-November) applications for regular HEAP benefits may be completed and returned online at MyBenefits.ny.gov or in person at any of the locations below."
            return cell}
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP5", for: indexPath) as! HEAPP5TableViewCell
            cell.HEAPP5TitleLabel.text = "Contact information:"
            return cell}
        if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP7", for: indexPath) as! HEAPP7TableViewCell
            return cell}

        if indexPath.row == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP8", for: indexPath) as! HEAPP8TableViewCell
            return cell}

        if indexPath.row == 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP9", for: indexPath) as! HEAPP9TableViewCell
            return cell}

        else {
           let cell = tableView.dequeueReusableCell(withIdentifier: "HEAPP6", for: indexPath) as! HEAPP6TableViewCell
            cell.HEAPP6TitleLabel.text = HEAPP6TitlesArray[indexPath.row]
            cell.HEAPP6ContLabel.text = HEAPP6ContArray[indexPath.row]
            return cell
        }
        
    }
    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Home Energy Assistance Program"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
 
    
    
    

}
