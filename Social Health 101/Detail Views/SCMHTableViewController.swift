//
//  SCMHTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/27/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SCMHTableViewController: UITableViewController {

    var VCName = ""
    var SCMHTitlesArray = ["What is it?", "Hours of operation:", "Contact information:", "", "", ""]
    var SCMHContArray = ["Suffolk County Mental Health Clinics are clinics run with Suffolk County government funding to help provide SUBSIDIZED CARE to county residents.", "All Clinics are held Monday through Thursday 9:00 AM to 9:00 PM and Friday 9:00 AM to 5:00 PM.", "Services are offered at the following locations: Brentwood Clinic 1841 Brentwood Road, Brentwood, (631) 853-7300; Farmingville Clinic, 15 Horseblock Place, Farmingville (631) 854-2552; Riverhead Clinic, County Center, Riverhead (631) 852-1440.", "", "", ""]
    
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
        return SCMHTitlesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SCMHP2", for: indexPath) as! SCMHP2TableViewCell

        return cell}
        
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SCMHP3", for: indexPath) as! SCMHP3TableViewCell
    
        return cell}
            
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SCMHP4", for: indexPath) as! SCMHP4TableViewCell
        return cell}
            
        else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SCMHP1", for: indexPath) as! SCMHP1TableViewCell
        cell.SCMHTitleLabel.text = SCMHTitlesArray[indexPath.row]
        cell.SCMHContLabel.text = SCMHContArray[indexPath.row]
        return cell}
    }
    
    
    
    

    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Suffolk County Mental Health Clinics"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

    
    
    
    

}
