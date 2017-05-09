//
//  GRTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class GRTableViewController: UITableViewController {

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
        return 3
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GRP1", for: indexPath) as! GRP1TableViewCell
            cell.GRP1TitleLabel.text = "What is it?"
            cell.GRP1ContLabel.text = "GoodRx.com is a site and mobile app that gathers current price and discount information for prescription medications to help find the lowest cost pharmacy for prescriptions.  The average GoodRx customer saves $276 a year on their prescriptions."
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GRP2", for: indexPath) as! GRP2TableViewCell
            cell.GRP2TitleLabel.text = "How does it work?"
            cell.GRP2ContLabel1.text = "Prescription drug prices are not regulated. The cost of a prescription may differ by more than $100 between pharmacies across the street from each other! To find the lowest price on a presecription medication simply go to the GoodRx.com home page or mobile app, type in the drug’s name in the search field, and click the “Find the Lowest Price” button. A list of local pharmacies and their prices is displayed."
            cell.GRP2ContLabel2.text = "Often times, coupons are needed for to access the savings listed. GoodRx coupons are available on the site as well, they are free to use and, are accepted at virtually every U.S. pharmacy. Using these coupons is similar to using coupon at a grocery store. Simply print the coupon and bring it with you to the pharmacy when you pick up your prescription. The pharmacist will enter the numbers on the coupon into their system to find the discount. Coupons can also be accessed directly via the mobile app or GoodRx website for patient’s without access to a printer."
            return cell}
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GRP3", for: indexPath) as! GRP3TableViewCell
            cell.GRP3TitleLabel.text = "Contact information:"
            cell.GRP3ContLabel.text = "GoodRx is 100% free and no personal information required."
            cell.GRP3ContLabel2.text = "Visit the GoodRx website to get started:"
            return cell}
    
    }
   
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Good Rx"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
 
    
    
    
    
}
