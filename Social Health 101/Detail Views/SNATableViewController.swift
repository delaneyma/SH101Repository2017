//
//  SNATableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SNATableViewController: UITableViewController {

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
        return 4
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SNAP1", for: indexPath)as! SNAP1TableViewCell
            cell.SNAP1TitleLabel.text = "What is it?"
            cell.SNAP1ContLabel1.text = "In New York State, if you are not eligible for other assistance (Emergency or Family) programs, you may be eligible for SNA. SNA is for:"
            cell.SNAP2ContLabel2.text = "• Single adults • Childless couples • Children living apart from any adult relative • Families of persons found to be abusing drugs or alcohol • Families of persons refusing drug/alcohol screening, assessment or treatment • Persons who have exceeded the 60-month limit on assistance • Aliens who are eligible for temporary assistance, but who are not eligible for federal reimbursement"
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SNAP2", for: indexPath) as! SNAP2TableViewCell
            cell.SNAP2TitleLabel.text = "How does it work?"
            cell.SNAP2ContLabel1.text = "Generally, you can receive cash SNA for a maximum of two years in a lifetime. After that, if you are eligible for SNA, it is provided in non-cash form, such as a two party check or a voucher. In addition, non-cash SNA is provided for:"
            cell.SNAP2ContLabel2.text = "• Families of persons found to be abusing drugs or alcohol • Families of persons refusing drug/alcohol screening, assessment or treatment • Families with an adult who has exceeded the 60-month lifetime time limit"
            return cell}
        
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SNAP3", for: indexPath) as! SNAP3TableViewCell
            cell.SNAP3TitleLabel.text = "NOTE:"
            cell.SNAP3ContLabel.text = "Recipients of SNA, who are determined to be able to work must also comply with work requirements to receive SNA benefits."
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SNAP4", for: indexPath)as! SNAP4TableViewCell
            cell.SNAP4TitleLabel.text = "How to Apply:"
            cell.SNAP4ContLabel1.text = "To find out if you are eligible to receive Temporary Assistance, including help with an emergency, you need to file an application with your county Department of Social Services:"
            cell.SNAP4ContLabel2.text = " Suffolk County DSS: Ph: (631)854-9936 or Emergency Contact Ph: (631)854-9100; Addresss: 3085 Veterans Highway, Ronkonkoma, New York, 11779"
            cell.SNAP4ContLabel3.text = "You must fill out the application form and file it at your local department of Social Services. You should identify any emergency needs you may have at this time. If you have an emergency, you will be interviewed and told in writing about the decision on your emergency the same day you apply."
            return cell}
    
    }
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Safety Net Assistance"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }


    
    
}
