//
//  ONATableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class ONATableViewController: UITableViewController {

    var VCName = ""
    var ONAP2TitlesArray = ["P1", "ONA is committed to strengthening NYS's welcoming environment for new Americans by:", "P3", "New Americans Hotline: 1-800-566-7636:", "Through the hotline, one can:", "P4"]
    var ONAP2ContArray = ["P1", " • Creating a network of neighborhood-based “Opportunity” Centers • Increasing access to English-for-Speakers-of-other-Languages (ESOL) training. • Preparing New Americans for the naturalization process. • Connecting New Americans to business resources to harness their entrepreneurial spirit. • Developing and leveraging the professional skills of New Americans. • Maximizing the number of young people receiving Deferred Action for Childhood Arrivals. • Strengthening the connections between New Americans and their communities through civic engagement and other opportunities. • Reduce exploitation of New Americans by scammers and con artists. • Marshal State resources to better serve New Americans.", "P3", "The New Americans hotline is a toll-free, multi-lingual hotline. Anyone can call the hotline for information and referrals, regardless of citizenship or documented status. Calls to the hotline are confidential and anonymous.The hotline operates from 9AM to 8PM (ET), Monday through Friday (excluding Federal holidays) and is managed by Catholic Charities Community Services.", "• Ask general immigration and naturalization questions • Obtain referrals to immigrant-related public and private programs • Find out information about the ONA Opportunity Centers • Report immigration assistance fraud and schemes against immigrants", "P4"]
    
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
        return 6
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ONAP1", for: indexPath) as! ONAP1TableViewCell
            cell.ONAP1TitleLabel.text = "What is it?"
            cell.ONAP1ContLabel.text = "The New York State Office for New Americans (ONA) helps New Americans fully participate in New York State civic and economic life."
            return cell}
        
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ONAP3", for: indexPath) as! ONAP3TableViewCell
            cell.ONAP3TitleLabel.text = "How does it work?"
            cell.ONAP3ContLabel.text = "The New Americans hotline is a toll-free, multi-lingual hotline. The hotline provides live assistance in more than 200 languages. Anyone can call the hotline for information and referrals, regardless of citizenship or documented status. Calls to the hotline are confidential and anonymous."
            return cell}
        
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ONAP4", for: indexPath)as! ONAP4TableViewCell
            cell.ONAP4TitleLabel.text = "Additional Contact Info:"
            cell.ONAP4ContLabel.text = "Additionally, a network of 27 neighborhood-based Opportunity Centers have been established throughout the State and can be located here:"
                return cell}
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ONAP2", for: indexPath)as! ONAP2TableViewCell
            cell.ONAP2TitleLabel.text = ONAP2TitlesArray[indexPath.row]
            cell.ONAP2ContLabel.text = ONAP2ContArray[indexPath.row]
        return cell}
        
    }
    
   
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "New York State Office for New Americans"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

    
    
}
