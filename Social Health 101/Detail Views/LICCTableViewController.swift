//
//  LICCTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/30/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LICCTableViewController: UITableViewController {

    var VCName = ""
    var LICCP2ContArray = ["", "Through their 24-hour, seven-day-a-week, crisis hotlines and live online and mobile chat, they provide short - term crisis counseling, information, and referrals on a wide range of issues, including: ", "Depression - Family Communication - Sexual Identity - Substance Abuse - Child Abuse - Domestic Violence - Easting Disorders - Sexual Assault - STDs/AIDS - Suicide Prevention - Runaway Youth - Gender Identity", ""]
    
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
        return 6
    }

    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICCP1", for: indexPath) as! LICCP1TableViewCell
            cell.LICCP1TitleLabel.text = "What is it?"
            cell.LICCP1ContLabel.text = "Long Island Crisis Center provides free, confidential, and non-judgmental programs and services to support and empower Long Islanders at critical times in their lives."
            return cell}
        
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICCP3", for: indexPath) as! LICCP3TableViewCell
            cell.LICCP3TitleLabel.text = "Contact information:"
            cell.LICCP3ContLabel.text = "Long Island Crisis Center: 2740 Martin Avenue, Bellmore, NY   -   24/7 Hotline: 516-826-0244  -   longislandcrisiscenter.org "
            return cell}
    
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICCP4", for: indexPath) as! LICCP4TableViewCell
            return cell}
            
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICCP5", for: indexPath) as! LICCP5TableViewCell
                       return cell}
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICCP2", for: indexPath) as! LICCP2TableViewCell
            cell.LICCP2ContLabel.text = LICCP2ContArray[indexPath.row]
            return cell}

            
    }


    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("HeaderCellFile", owner: self, options: nil)?.first as! HeaderCellFile
        HeaderView.HeaderLabel.text = "Long Island Crisis Center"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }




}
