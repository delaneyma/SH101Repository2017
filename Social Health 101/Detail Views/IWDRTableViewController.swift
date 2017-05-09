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
    var IWDRP3TitleArray = ["P1", "P2", "Long Island Center for Recovery Inc.", "Quannacut at Eastern Long Island Hospital", "The Long Island Home-South Oaks Hospital", "Catholic Charities Talbot House", "Charles K. Post Addictions Center", "Seafield Center, Inc.", "St. Charles Hospital"]
    var IWDRP3ContArray = ["P1", "P2", "28 day drug and alcohol rehab, Crisis Services, Medically Supported Withdrawal. Ph: 728-3100 Fax: 728-1627 -- Address 320 West Montauk Highway, Hampton Bays, NY 11946 - www.licrrehab.com", "28 day drug and alcohol rehab, medical managed detoxification, voluntary or court mandated. Ph: 477-8877 Fax: 477-5029 - Address: 201 Manor Place, Greenport, NY 11944 - www.elih.org ", "24 beds.(Crisis Services-Med. Sup Withdrawal-Inpatient, must have insurance) Ph: 608-5317 Fax: 608-5786 - Address: 400 Sunrise Hwy, Amityville, NY 11701 - www.south-oaks.org", "Crisis Services-Short Term Medically Monitored Withdrawal, 24 hour voluntary only,18+) Ph: (631) 589-4144 Fax (631) 589-3281 - Address: 30-C Carlough Road, Bohemia, NY 11716", "79 beds. (28 day Rehabilitation), Ph: 434-7209 Fax: 434-7254 - Address: 998 Crooked Hill Rd., West Brentwood, NY 11717", "90 beds.(16+, around 17 day program, 24 hour medical, DOES provide transportation). Ph: 288-1122 Fax: 288-1638 - Address: 7 Seafield Lane, Westhampton Beach, NY 11978 - www.seafieldcenter.com/Seafield ", "40 beds.(30 male, 10 female. 19+, 28 day drug and alcohol rehab) Ph: 474-6233 Fax: 474 6235. Address: 200 Belle Terre Road-5 th Floor, Port Jefferson, NY 11777" ]
    
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
        return 9
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
