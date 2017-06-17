//
//  SCMHHTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SCMHHTableViewController: UITableViewController {
    
    var VCName = ""
    
    var SCMHHP2TitleArray = ["P1", "Apartment Treatment Program:", "Community Residences:", "Supported Housing:", "Supportive Housing:", "Community Residence, Single Room Occupancy (CR-SRO):", "P3"]
    
    var SCMHHP2ContArray  = ["P1", "Residents live with one or two other individuals in a community setting where they are visited by staff 3-4 times per week.", "Licensed, staffed, rehabilitative programs designed to assist individuals with learning or relearning the skills necessary to live as independently as possible in the community. There are varying levels of care based on the individuals’ needs. Levels of care range from 24 hour, 7-day staff supervision to 1 or 2 staff visits per week. Case managers, treatment providers, family or consumers can make the application, but each agency has its own requirements for documentation. Fees are regulated and can be managed by public benefits or private pay.", "A number of agencies offer only this form of housing. It is virtually independent living. Supported Housing is a non-licensed, non-staffed permanent housing option. For a percentage of the person’s income, he/she is provided with an apartment (may be single or shared) and all necessary furnishing. Utilities are usually included. Case Management is provided.", "In supportive housing, housing and support are linked. This means that staff members usually work in the residences to provide support. Supportive housing is a cost-effective combination of affordable housing with services that helps people live more stable, productive lives. Supportive housing works well for people who face the most complex challenges: individuals and families who are not only homeless, but who also have very low incomes and serious, persistent issues that may include substance use, mental illness, and HIV/AIDS.", "A type of transitional living. These are individual apartments that have their own efficiency kitchens and bathroom facilities, in supervised buildings with on-site case management.", "P3"]
    
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
        return 8
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SCMHHP1", for: indexPath) as! SCMHHP1TableViewCell
            cell.SCMHHP1TitleLabel.text = "What is it?"
            cell.SCMHHP1ContLabel.text = "Types of housing available include:"
            return cell}
        if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SCMHHP3", for: indexPath) as! SCMHHP3TableViewCell
            cell.SCMHHP3TitleLabel.text = "Contact Information:"
            cell.SCMHHP3ContLabel.text = "Application for all mental health housing in Suffolk County must be submitted to the Single Point of Access (SPA). The SPA may be reached at (631) 231-3562."
            return cell}
        
        if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SCMHHP4", for: indexPath) as! SCMHHP4TableViewCell
            return cell}
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SCMHHP2", for: indexPath) as! SCMHHP2TableViewCell
            cell.SCMHHP2TitleLabel.text = SCMHHP2TitleArray[indexPath.row]
            cell.SCMHHP2ContLabel.text = SCMHHP2ContArray[indexPath.row]
            return cell}
    }
   
    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Suffolk County Mental Health Housing"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    
    

}
