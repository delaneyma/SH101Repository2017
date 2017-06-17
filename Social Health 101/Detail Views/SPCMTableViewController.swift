//
//  SPCMTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SPCMTableViewController: UITableViewController {

    var VCName = ""
    
    var SPCMP1TitlesArray = ["What is it?", "Contact information:"]
    var SPCMP1ContArray = ["Suffolk County Case Management Evaluation Referral And Assessment (CAMERA) evaluates, determines eligibility and refers applications for case management and ACT (Assertive Community Treatment) Teams for persons with severe and persistent mental illness.  Case managers assist mental health consumers with accessing services that are needed to improve their quality of life, such as outpatient treatment, vocational services, disability benefits, housing and linkages to community supports.  ACT Teams provide mental health treatment for high-need consumers in the community who have not been successful in traditional treatment settings.", "For more information on eligibility, services and how to apply, call (631) 853-2995"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
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
        
        
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SPCMP2", for: indexPath)as! SPCMP2TableViewCell
            return cell
  
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SPCMP1", for: indexPath)as! SPCMP1TableViewCell
        cell.SPCMP1TitleLabel.text = SPCMP1TitlesArray[indexPath.row]
        cell.SPCMP1ContLabel.text = SPCMP1ContArray[indexPath.row]
        return cell
    }
   
    
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Suffolk Psychiatric Case Management"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
    
}
