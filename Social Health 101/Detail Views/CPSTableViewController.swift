//
//  CPSTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/27/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class CPSTableViewController: UITableViewController {

    var VCName = ""
    
    var CPSTitlesArray = ["What is it?", "What happens after a report is filed?", "Additional info:", "", ""]
    var CPSContArray = ["The CPS Bureau investigates reports of alleged child abuse and/or maltreatment made to the New York State Central Register via a toll free hotline (800-342-3720) pertaining to residents of Suffolk County.  All calls remain confidential.  The Bureau also arranges for ongoing child protective and rehabilitative services to the child and the family.", "The New York State Central Register notifies the local child protective services (CPS) immediately. An investigation will begin with 24 hours. This will usually include a telephone call back to the reporting source to verify the information provided and to begin assessing any risk to the child. CPS must notify the subject(s) of the existence of the report and of the subject’s rights. CPS will usually try to see the child first but this is not required by law and is not always possible. If warranted, a child may be taken into protective custody.", "Within sixty days of the date of the report, CPS must determine if the suspicion reported is 'indicated' or 'unfounded.' Only 'some credible evidence' is required to indicate the report, while a 'fair preponderance of evidence' is required to submit a petition to the family court or to uphold a finding in a fair hearing. An indicated report may be closed if the situation is not deemed to be serious. Otherwise the family may be offered a service plan to avoid further neglect or abuse. If the family refuses such a plan, and the refusal is believed to expose the child to further risk, CPS will ask the family court to order a service plan.For additional information, visit: www.ocfs.state.ny.us/main/cps/", "", ""]
    
    
    
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
        return CPSTitlesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CPSP2", for: indexPath) as! CPSP2TableViewCell
        return cell }
        
            
        if indexPath.row == 4 {
           let cell = tableView.dequeueReusableCell(withIdentifier: "CPSP3", for: indexPath) as! CPSP3TableViewCell
        return cell}
        
        else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CPSP1", for: indexPath) as! CPSP1TableViewCell
        cell.CPSP1TitleLabel.text = CPSTitlesArray[indexPath.row]
        cell.CPSP1ContLabel.text = CPSContArray[indexPath.row]
            return cell}
    
    }

    
    

    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Child Protective Services of Suffolk County"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

    

    
    
    

}
