//
//  RMHTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/24/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class RMHTableViewController: UITableViewController {

    var VCName  = ""
    
    var RMHP1MainTitlesArray = ["", "Who can stay?", "How much does it cost?", "How to apply:", "Where is it?", ""]
    var RMHP1ContentArray = ["", "Seriously ill or injured children who are 21 years of age and under who are receiving treatment at an area hospital, and their immediate family may be referred for residency at the House.", "The Ronald McDonald House of Long Island requests a small fee of $25 per night per room. This includes lodging, use of the kitchen and laundry facilities and on-site parking.", "Families are referred to the House through a hospital’s social work department. A triage approach is used with consideration given to the severity of the child’s situation, the availability of bedside sleeping arrangements for parents, length of stay and the family’s ability to travel to and from the hospital.", "The Ronald McDonald House of Long Island is located on the campus of Cohen's Children's Hospital at 26707 76th Avenue, New Hyde Park, NY 11040. (mail@rmhlongisland.org, Ph:(516)775-5683 or (718)343-5683", ""]
    
    
    
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
        return RMHP1MainTitlesArray.count
    }

   
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RMHP2", for: indexPath) as! RMHP2TableViewCell
            cell.RMHP2Label.text = "What is it?"
            cell.RMHP2ContLabel.text = "Charity providing housing for families who have seriously ill children being treated at area hospitals and other local medical facilities. The Ronald McDonald House Charity (RMHC) aims to keep families with sick children close to each other in their time of need."
            return cell}
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RMHP3", for: indexPath) as! RMHP3TableViewCell
            return cell
        }
        else { let cell = tableView.dequeueReusableCell(withIdentifier: "RMHP1", for: indexPath) as! RMHP1TableViewCell
            cell.RMHP1TitleLabel.text = RMHP1MainTitlesArray[indexPath.row]
            cell.RMHP1ContLabel.text = RMHP1ContentArray[indexPath.row]
            return cell
        }}

    

    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Ronald McDonald House"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
    
    

}
