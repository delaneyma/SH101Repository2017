//
//  IWDRTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/30/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class IWDRTableViewController: UITableViewController {

    var VCName = ""
    var IWDRP3TitleArray = ["P1", "P2", "Long Island Center for Recovery Inc.", "*3*", "Quannacut at Eastern Long Island Hospital", "*5*", "The Long Island Home-South Oaks Hospital","*7*", "Catholic Charities Talbot House","*9*", "Charles K. Post Addictions Center","*11*", "Seafield Center, Inc.", "*13*", "St. Charles Hospital", "*15*"]
    var IWDRP3ContArray = ["P1", "P2", "28 day drug and alcohol rehab, Crisis Services, Medically Supported Withdrawal. Ph: 728-3100 Fax: 728-1627 -- Address 320 West Montauk Highway, Hampton Bays, NY 11946 - www.licrrehab.com", "*3*", "28 day drug and alcohol rehab, medical managed detoxification, voluntary or court mandated. Ph: 477-8877 Fax: 477-5029 - Address: 201 Manor Place, Greenport, NY 11944 - www.elih.org ", "*5*", "24 beds.(Crisis Services-Med. Sup Withdrawal-Inpatient, must have insurance) Ph: 608-5317 Fax: 608-5786 - Address: 400 Sunrise Hwy, Amityville, NY 11701 - www.south-oaks.org", "*7*", "Crisis Services-Short Term Medically Monitored Withdrawal, 24 hour voluntary only,18+) Ph: (631) 589-4144 Fax (631) 589-3281 - Address: 30-C Carlough Road, Bohemia, NY 11716", "*9*", "79 beds. (28 day Rehabilitation), Ph: 434-7209 Fax: 434-7254 - Address: 998 Crooked Hill Rd., West Brentwood, NY 11717", "*11*", "90 beds.(16+, around 17 day program, 24 hour medical, DOES provide transportation). Ph: 288-1122 Fax: 288-1638 - Address: 7 Seafield Lane, Westhampton Beach, NY 11978 - www.seafieldcenter.com/Seafield", "*13*", "40 beds.(30 male, 10 female. 19+, 28 day drug and alcohol rehab) Ph: 474-6233 Fax: 474 6235. Address: 200 Belle Terre Road-5 th Floor, Port Jefferson, NY 11777", "*15*" ]
    
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
        return 16
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP1", for: indexPath) as! IWDRP1TableViewCell
            cell.IWDRP1TitleLabel.text = "What is it?"
            cell.IWDRP1ContLabel.text = "Suffolk County has a number of resources devoted to substance addiction support."
            return cell        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP2", for: indexPath) as! IWDRP2TableViewCell
            cell.IWDRP2TitleLabel.text = "Contact information:"
            return cell}
            
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP4", for: indexPath) as! IWDR4TableViewCell
            return cell}
            
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP5", for: indexPath) as! IWDRP5TableViewCell
            return cell}
            
        if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP6", for: indexPath) as! IWDRP6TableViewCell
            return cell}
            
        if indexPath.row == 9 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP7", for: indexPath) as! IWDRP7TableViewCell
            return cell}
            
        if indexPath.row == 11 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP8", for: indexPath) as! IWDRP8TableViewCell
            return cell}
            
        if indexPath.row == 13 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP9", for: indexPath) as! IWDRP9TableViewCell
            return cell}
            
        
        if indexPath.row == 15 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP10", for: indexPath) as! IWDRP10TableViewCell
            return cell}
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IWDRP3", for: indexPath) as! IWDRP3TableViewCell
            cell.IWDRP3TitleLabel.text = IWDRP3TitleArray[indexPath.row]
            cell.IWDRP3ContLabel.text = IWDRP3ContArray[indexPath.row]
               return cell }
        
        
    }
    
    
    
    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Inpatient Withdrawl, Detoxification, and Rehabilitation"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    

    
    
    
    
    
}
