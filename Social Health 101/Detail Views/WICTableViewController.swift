//
//  WICTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/25/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class WICTableViewController: UITableViewController {

    
    var VCName = ""
    
    var WICP3TitlesArray = ["", "How does it work?", "", "How to apply:", "What to bring to a WIC appointment", ""]
    var WICP3ContArray = ["", "The WIC Program provides food checks that can be used at local contracted grocery stores and pharmacies to buy specific WIC approved nutritious foods. While on WIC, participants learn about good nutrition, breastfeeding, choosing healthy foods and other health concerns.", "", "Contact the WIC State or local agency serving your area to schedule an appointment.  Applicants will be advised about what to bring to the WIC appointment to help determine eligibility (see below!). New York State Hotline: 1-800-522-5006; Women, Infants and ; Children Suffolk County Office: WIC LA #298; Suffolk County Dept. of Health Services; H. Lee Dennison Building, 3rd Floor; 100 Veterans Memorial Highway; P.O. ;Box 6100, Hauppauge, NY 11788-0099; (631) 853-3014 Fax (631) 853-8349; Monday ; thru Friday 7:30 am - 4:30 pm", "1. Proof of identity for each person applying. 2. Proof of where you live. The proof must show your actual street address, not a post office box. 3. Proof of income for each household member who works. Documentation must be for the last 30 days. 4. Proof of your participation in Medicaid, SNAP/Food Stamps or Temporary Assistance to Needy Families (TANF). 5. Immunization records for children. 6. Confirmation of pregnancy - a statement from your health care provider with your baby's due date. 7. Any WIC Medical forms given to you by your health care provider, e.g. WIC Medical Referral Form for Infants and Children, WIC Medical Referral Form for Women, or Medical Documentation Form for WIC Formula and Approved WIC Foods", ""]
    
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
        return WICP3TitlesArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WICP1", for: indexPath) as! WICP1TableViewCell
            cell.WICP1TitleLabel.text = "What is it?"
            cell.WICP1ContLabel.text = "The Special Supplemental Nutrition Program for Women, Infants, and Children, popularly known as WIC provides Federal grants to New York State for supplemental foods, health care referrals, and nutrition education for low-income pregnant, breastfeeding, and non-breastfeeding postpartum women, and to infants and children who are found to be at nutritional risk."
            return cell}
        if indexPath.section == 0 && indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "WICP2", for: indexPath) as! WICP2TableViewCell
            cell.WICP2TitleLabel.text = "Who is elligible?"
            cell.WICP2ContLabel.text = "Pregnant, postpartum and breastfeeding women, infants, and children up to age 5 are eligible. They must meet income guidelines, a State residency requirement, and be individually determined to be at 'nutritional risk' by a health professional. To be eligible on the basis of income, applicants' gross income (i.e. before taxes are withheld) must fall at or below 185 percent of the U.S. Poverty Income Guidelines."
            return cell}
        if indexPath.row == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "WICP4", for: indexPath)as! WICP4TableViewCell
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "WICP3", for: indexPath) as! WICP3TableViewCell
            cell.WICP3TitleLabel.text = WICP3TitlesArray[indexPath.row]
            cell.WICP3ContLabel.text = WICP3ContArray[indexPath.row]
            return cell}
    }
    
    
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Women, Infants, and Children (WIC)"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
    
}
