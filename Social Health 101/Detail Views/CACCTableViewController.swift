//
//  CACCTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class CACCTableViewController: UITableViewController {

    
    var VCName = ""
    
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
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CACCP1", for: indexPath)as! CACCP1TableViewCell
            cell.CACCP1TitleLabel.text = "What is it?"
            cell.CACCP1ContLabel1.text = "CARECEN-NY is one of two New York State Office of New Americans Opportunity Centers located on Long Island.  CARECEN has provided high quality legal assistance to immigrant communities in Nassau and Suffolk counties for over thirty years."
            cell.CACCP1ContLabel2.text = "They offer a variety of legal services in both affirmative and defensive cases, including initial and renewal requests for temporary protected status (TPS) and Deferred Action for Childhood Arrivals (DACA), green card renewals, naturalization, adjustment of status, family petitions, unlawful presence waivers, special immigrant juvenile status (SIJS), among others. They screen for a broad range of legal relief when they meet with clients and inform them of the immigration benefits they are eligible to apply for and the implications of applying for them."
            return cell}
            
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CACCP2", for: indexPath)as! CACCP2TableViewCell
            cell.CACCP2TitleLabel.text = "Contact information:"
            cell.CACCP2ContLabel1.text = "Information and resources are available online or in person at:"
            cell.CACCP2ContLabel2.text = "Hempstead Office Ph: 516-489-8330 - Address:91 N. Franklin Street, Ste. 208, Hempstead, NY 11550"
            cell.CACCP2ContLabel3.text = " "
            cell.CACCP2ContLabel4.text = "Brentwood Office Ph: 631-273-8721 - Address: 2000 Brentwood Road, Second Floor, Brentwood, NY 11717"
        
            return cell}
        
    }
  
 
 
 
 

    //http://www.carecenny.org/
    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Central American Refugee Center - New York"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    
    
    
}
