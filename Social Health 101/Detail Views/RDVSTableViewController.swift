//
//  RDVSTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class RDVSTableViewController: UITableViewController {

    var VCName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 150
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RDVSP1", for: indexPath)as! RDVSP1TableViewCell
            cell.RDVSP1TitleLabel.text = "What is it?"
            cell.RDVSP1ContLabel.text = "Provides supportive and residential services to individuals and families who are in abusive domestic relationships. They provide spousal abuse prevention, group counseling, family violence counseling, family violence prevention, spousal abuse counseling, a batterers program, and programs for spouse/partner abusers. Also administers a Self-Help Anti-violence Re-education Program (the S.H.A.R.P.), for men who are physically or verbally abusive toward their partners."

            return cell}
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RDVSP2", for: indexPath) as! RDVSP2TableViewCell
            cell.RDVSP2TitleLabel.text = "Contact information:"
            cell.RDVSP2ContLabel.text = "24-Hour Hotline, 7 days a week: (631) 329-2200  - SHARP: (631) 329-4305  - Email: info@theretreatinc.org"
            return cell}
        }

    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "The Retreat - Domestic Violence Services"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
}
