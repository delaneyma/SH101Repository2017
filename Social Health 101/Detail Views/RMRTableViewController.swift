//
//  RMRTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/25/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class RMRTableViewController: UITableViewController {

    var VCName = ""
    var RMRP2TitlesArray = ["", "How does it work?", "Where is it?", "More info:"]
    var RMRP2ContArray = ["", "The Family Room is staffed from 9 am to 9 pm, seven days a week and is offered at no cost to the families of children being cared for at Stony Brook Children’s. A laundry room and full restroom are open 24 hours a day.  Social work or child life can orient families to the Family Room", "It is integrated within the Children's Hospital at Stony Brook University Hospital.", "" ]
    
    
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
        return RMRP2TitlesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RMRP1", for: indexPath) as! RMRP1TableViewCell
        cell.RMRP1TitleLabel.text = "What is it?"
            cell.RMRP1ContLabel.text = "The Ronald McDonald Family Room at Stony Brook Children’s Hospital serves as an extension of the Ronald McDonald House of Long Island. It is equipped with a fully stocked kitchenette, dining area, comfortable lounge area with a large flat screen television, laptops with internet access, private shower, and transportation services."

            return cell}
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RMRP3", for: indexPath) as! RMRP3TableViewCell
            cell.RMRP3TitleLabel.text = "More information:"
            
            return cell}
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RMRP2", for: indexPath) as! RMRP2TableViewCell
            cell.RMRP2TitleLabel.text = RMRP2TitlesArray[indexPath.row]
            cell.RMRP2ContLabel.text = RMRP2ContArray[indexPath.row]
            return cell
        }
    }
    

    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Ronald McDonald Room (Inpatient)"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
