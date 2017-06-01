//
//  TANFTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/27/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class TANFTableViewController: UITableViewController {

    
    var VCName = ""
    var TANFP1TitlesArray = ["What is it?", "How to apply:", "Contact Information:", "", ""]
    var TANFP1ContArray = ["The Temporary Assistance for Needy Families (TANF) program provides temporary financial assistance for pregnant women and families with one or more dependent children. TANF provides financial assistance to help pay for food, shelter, utilities, and expenses other than medical.In New York, the Family Assistance (FA) program provides cash assistance to needy families that include a minor child living with a parent (including families where both parents are in the household) or a caretaker relative. FA operates under Federal TANF guidelines.", "To find out if you are eligible to receive Temporary Assistance, including help with an emergency, you need to file an application with your county Department of Social Services: Visit the NYS informational page on TANF for more information https://otda.ny.gov/programs/temporary-assistance/ ", "Suffolk County DSS - 3085 Veterans Highway; Ronkonkoma, New York, 11779 - Phone: 631-854-9936 - Emergency Contact: 631-854-9100.", "", ""]
    
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
        return TANFP1TitlesArray.count
    }

    
    
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TANFP2", for: indexPath) as! TANFP2TableViewCell
        return cell}
        
        if indexPath.row == 4{
        let cell = tableView.dequeueReusableCell(withIdentifier: "TANFP3", for: indexPath) as! TANFP3TableViewCell
        return cell}
        
        else{
        let cell = tableView.dequeueReusableCell(withIdentifier: "TANFP1", for: indexPath) as! TANFP1TableViewCell
        cell.TANFP1TitleLabel.text = TANFP1TitlesArray[indexPath.row]
        cell.TANFP1ContLabel.text = TANFP1ContArray[indexPath.row]
            return cell}
    }


    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Temporary Assistance for Needy Families (TANF)"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

}
