//
//  VIBSTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/28/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class VIBSTableViewController: UITableViewController {

    var VCName = ""
    var VIBSP1TitlesArray = ["What is it?", "Contact information:"]
    var VIBSP1ContArray = ["Their mission is to assist the survivors of domestic violence, rape and sexual assault, elder abuse, child sexual abuse and human trafficking; to prevent the incidence of these crimes through education and services; and to raise community awareness of the need for justice and compassion for victims.", "Through its Hotline, VIBS provides telephone counseling, information, referrals, and access to Emergency Room Companions and SANE Centers." ]
    
    
    
    
    
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
        return 4
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "VIBSP2", for: indexPath) as! VIBSP2TableViewCell
            cell.VIBSP2ContLabel.text = "Phone: (631)-360-3606  - (Open 24 hours a day, 7 days a week )"
            
            return cell}
        
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "VIBSP3", for: indexPath) as! VIBSP3TableViewCell
            
            return cell}

            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "VIBSP1", for: indexPath) as! VIBSP1TableViewCell
            cell.VIBSP1TitleLabel.text = VIBSP1TitlesArray[indexPath.row]
            cell.VIBSP1ContLabel.text = VIBSP1ContArray[indexPath.row]
            return cell}
    }

    
    


    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Victims Information Bureau of Suffolk"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
    
    
    
}
