//
//  DHHTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class DHHTableViewController: UITableViewController {

    var VCName = ""
    var DHHP3TitlesArray = ["P1", "P2", "Hudson River Healthcare, Inc.", "", "North Shore - Long Island Jewish Health Home", ""]
    var DHHP3ContArray = ["P1", "P2", "Main Contact: Kathleen Clay, 1-888-980-8410, kclay@hrhcare.org • Alternate Contact: Linda Assante, 914-425-0891, lassante@hrhcare.org • Referral Contact: Niaisha Yates, 1-888-980-8410,  Nyates@hrhcare.org • Member Referral Number: 1-888-980-8410, http://www.hrhcare.org/", "",  "Main Contact: Anne Ferguson, 516-876-5450, aferguso@northwell.edu • Alternate Contact: Erika Bentley-Ammonds, RN, 516-876-5228, ebentleyam@northwell.edu • Referral Contact: Jeanne Losquadro, 516-876-5310, jlosquad@northwell.edu • Referral Contact: William Wischhusen, 516-876-5457, wwischhu@northwell.edu • Member Referral Number: 888-680-6501", ""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200    }

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "DHHP1", for: indexPath)as! DHHP1TableViewCell
            cell.DHHP1TitleLabel.text = "What is it?"
            cell.DHHP1ContLabel1.text = "Navigating the current health care system can be difficult for relatively healthy Medicaid recipients and even more so for enrollees who have complex chronic conditions that drive a high volume of high-cost inpatient hospital admissions."
            cell.DHHP1ContLabel2.text = "A Health Home is a care management service model whereby all of an individual's caregivers communicate with one another so that all of a patient's needs are addressed in a comprehensive manner. This is done primarily through a 'care manager' who oversees and provides access to all of the services an individual needs to assure that they receive everything necessary to stay healthy, out of the emergency room and out of the hospital. Health records are shared (either electronically or paper) among providers so that services are not duplicated or neglected. The health home services are provided through a network of organizations – providers, health plans and community-based organizations. When all the services are considered collectively they become a virtual 'Health Home.'"
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DHHP2", for: indexPath)as! DHHP2TableViewCell
            cell.DHHP2TitleLabel.text = "Contact information:"
            return cell}
            
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DHHP4", for: indexPath)as! DHHP4TableViewCell
       
            return cell}
            
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DHHP5", for: indexPath)as! DHHP5TableViewCell

            return cell}
            
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DHHP3", for: indexPath) as! DHHP3TableViewCell
            cell.DHHP3TitleLabel.text = DHHP3TitlesArray[indexPath.row]
            cell.DHHP3ContLabel.text = DHHP3ContArray[indexPath.row]
            
            return cell}
        
    }
   
    
    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Suffolk County Designated Health Homes"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

    
    
}
