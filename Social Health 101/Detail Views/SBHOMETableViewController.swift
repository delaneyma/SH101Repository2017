//
//  SBHOMETableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SBHOMETableViewController: UITableViewController {

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "SBHOMEP1", for: indexPath) as! SBHOMEP1TableViewCell
            cell.SBHOMEP1TitleLabel.text = "What is it?"
            cell.SBHOMEP1ContLabel.text = "Stony Brook HOME is a free student-run primary care clinic located in Islip, which offers free outpatient health care, health information, and social work for adults with no health insurance.  Special Women’s Health clinic days are also offered periodically."
            return cell}
      
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SBHOMEP1", for: indexPath) as! SBHOMEP1TableViewCell
            cell.SBHOMEP1TitleLabel.text = "How does it work?"
            cell.SBHOMEP1ContLabel.text = "The clinic operates two Sundays a month from 10am – 3pm.  Visits are by appointment only. Patients should call ahead to make an appointment."
            return cell}

        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SBHOMEP2", for: indexPath) as! SBHOMEP2TableViewCell
            cell.SBHOMEP2TitleLabel.text = "Contact information:"
            cell.SBHOMEP2ContLabel1.text = "Clinic is generally open every other Sunday and appointments can be made by phone at (631) 235-5281; Email: stonybrookhome@gmail.com"
            cell.SBHOMEP2ContLabel2.text = "Address: 2701 Sunrise Highway, Islip Terrace, NY 11752"
            return cell}
    }
    
    
//    Website:
//    http://www.stonybrookhome.com/

    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Stony Brook Health Outreach and Medical Education"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

    
    
}
