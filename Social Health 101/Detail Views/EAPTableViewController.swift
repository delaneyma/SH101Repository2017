//
//  EAPTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class EAPTableViewController: UITableViewController {

    var VCName = ""
    
    var EAPP4TitlesArray = ["P1", "P2", "P3", "Emergency Assistance to Adults (EAA):", "Emergency Assistance to Needy Families (EAF):", "Emergency Safety Net Assistance (ESNA):", "NOTE:", ""]
    var EAPP4ContArray = ["P1", "P2", "P3", "EAA provides assistance for individuals and couples who have been determined eligible or are receiving SSI (Supplemental Security Income)", "EAF provides assistance to meet the temporary needs of pregnant women and families with at least one child under age 18, or under age 19 and regularly attending full time secondary school.", "ESNA provides assistance to single adults and childless couples.", "Aliens who do not have documents that permit them to reside legally in the US are eligible only for certain kinds of emergency benefits. See section on New Immigrants, Refugees, and the Undocumented.", ""]

    
    
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
        return 8
    }

    
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EAPP1", for: indexPath)as! EAPP1TableViewCell
            cell.EAPP1TitleLabel.text = "What is it?"
            cell.EAPP1ContLabel1.text = "In New York State, special temporary financial assistance is available for persons undergoing certain emergency situations.  An emergency is an urgent need or situation that has to be taken care of right away. Some examples of an emergency are:"
            cell.EAPP1ContLabel2.text = "• You are homeless • You have little or no food • Your landlord has told you that you must move or has given you eviction papers • You do not have fuel for heating in the cold weather period • Your utilities are shut-off or are about to be shut-off, or you have a 72-hour disconnect notice • You or someone in your family has been physically harmed , or threatened with violence by a partner, ex-partner or other household member"
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EAPP2", for: indexPath) as! EAPP2TableViewCell
            cell.EAPP2TitleLabel.text = "How does it work?"
            cell.EAPP2ContLabel1.text = "If you and/or your family are experiencing an emergency situation you may be eligible for emergency assistance. Some examples of emergency assistance include, but are not limited to:"
            cell.EAPP2ContLabel2.text = " • Payment of shelter arrears • Payment of utility arrears • Payment of fuel and/or cost of fuel delivery • Payment of Domestic Violence Shelter costs • Payment of Temporary Housing (Hotel/Motel) costs"
            return cell}
        
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EAPP3", for: indexPath) as! EAPP3TableViewCell
                cell.EAPP3TitleLabel.text = "What programs are offered?"
                cell.EAPP3ContLabel.text = "Payments may be authorized once you are determined to be eligible for one of the following emergency programs:"
            return cell
        }
        if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EAPP5", for: indexPath)as! EAPP5TableViewCell
            cell.EAPP5TitleLabel.text = "How to Apply:"
            cell.EAPP5ContLabel1.text = "To find out if you are eligible to receive Temporary Assistance, including help with an emergency, you need to file an application with your county Department of Social Services:"
            cell.EAPP5ContLabel2.text = " Suffolk County DSS: Ph: (631)854-9936 or Emergency Contact Ph: (631)854-9100; Addresss: 3085 Veterans Highway, Ronkonkoma, New York, 11779"
            cell.EAPP5ContLabel3.text = "You must fill out the application form and file it at your local department of Social Services. You should identify any emergency needs you may have at this time. If you have an emergency, you will be interviewed and told in writing about the decision on your emergency the same day you apply."
            return cell}
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "EAPP4", for: indexPath) as! EAPP4TableViewCell
            cell.EAPP4TitleLabel.text = EAPP4TitlesArray[indexPath.row]
            cell.EAPP4ContLabel.text = EAPP4ContArray[indexPath.row]

            return cell}
        
    }
  
    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Emergency Assistance Program"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    

    
    
    
}
