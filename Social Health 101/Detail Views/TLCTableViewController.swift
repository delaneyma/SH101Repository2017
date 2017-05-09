//
//  TLCTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class TLCTableViewController: UITableViewController {

    
    var VCName = ""
    var TLCP2TitlesArray = ["P1", "Income, Nutrition, and Benefits:", "Health and Long Term Care:", "Housing and Utilities:", "Guardianship, Neglect, and Abuse:", "Consumer:", "Other:", "P3"]
    var TLCP2ContArray = ["P1", "Social Security & SSI, Medicaid/Low-Income Medicare, Disability Benefits, Public Assistance & Food Stamps", "Medicare (Supplement Plans, Part C, Part D), Medicare Appeals, Nursing Home, Assisted Living Facility & Adult Home, Long Term & Home Health Care, Power of Attorney/Health Care Proxy & LivingWill", "Energy, Utility & HEAP, Home Repair Fraud, Landlord/Tenant, Senior Subsidized & Section 8 Housing, Town Code Violations/Taxes", "Representative Payee, Grandparents Rights, Financial Exploitation, Institutional Abuse", "Americans with Disabilities, Name Change, Debts & Loans, Fraud", "Warranties & Contracts, Miscellaneous", "P3"]
    
    
    
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
        return 8
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TLCP1", for: indexPath) as! TLCP1TableViewCell
            cell.TLCP1TitleLabel.text = "What is it?"
            cell.TLCP1ContLabel.text = "Legal Services provided without charge to Suffolk County residents 60 years or older. Legal services provided include:"
            return cell}
        if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TLCP3", for: indexPath) as! TLCP3TableViewCell
            cell.TLCP3TitleLabel.text = "Contact information:"
            cell.TLCP3ContLabel.text = "Phone: (631) 761-7470"
            
            return cell}
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TLCP2", for: indexPath)as! TLCP2TableViewCell
            cell.TLCP2TitleLabel.text = TLCP2TitlesArray[indexPath.row]
            cell.TLCP2ContLabel.text = TLCP2ContArray[indexPath.row]
            return cell
        }
    }
   
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Touro Law Center Senior Citizen's Law Program"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    
    
    
    
    
    
}
