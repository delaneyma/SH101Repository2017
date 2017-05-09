//
//  SNAPTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class SNAPTableViewController: UITableViewController {

    var VCName = ""
    
    
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
        return 4
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SNAPP1", for: indexPath) as! SNAPP1TableViewCell
            
            cell.SNAPP1TitleLabel.text = "What is it?"
            cell.SNAPP1ContLabel.text = "The Supplemental Nutrition Assistance Program (SNAP, formerly known as the Food Stamp Program) is the nation's most important anti-hunger program. In 2014, it helped more than 46 million low-income Americans to afford a nutritionally adequate diet in a typical month."
            
            return cell}
        
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SNAPP2", for: indexPath) as! SNAPP2TableViewCell
            
            cell.SNAPP2TitleLabel.text = "How does billing work?"
            cell.SNAPP2ContLabel1.text = "Households CAN use SNAP benefits to buy foods for the household to eat, such as: breads and cereals; fruits and vegetables; meats, fish and poultry; and dairy products. Seeds and plants which produce food for the household to eat. In some areas, restaurants can be authorized to accept SNAP benefits from qualified homeless, elderly, or disabled people in exchange for low-cost meals."
            cell.SNAPP2ContLabel2.text = "Households CANNOT use SNAP benefits to buy: Beer, wine, liquor, cigarettes or tobacco. Any nonfood items, such as: pet foods, soaps, paper products, household supplies, vitamins, medicines, food that will be eaten in the store, and hot foods."
            
            return cell}
        
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SNAPP3", for: indexPath) as! SNAPP3TableViewCell
            
            cell.SNAPP3TitleLabel.text = "Who is eligible?"
            cell.SNAPP3ContLabel.text = "To be eligible, households must meet certain tests, including resource and income tests."
            
            
            return cell}
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SNAPP4", for: indexPath) as! SNAPP4TableViewCell
            
            cell.SNAPP4TitleLabel.text = "Contact information:"
            cell.SNAPP4ContLabel1.text = "In New York, applications can be made online at https://www.mybenefits.ny.gov/mybenefits/begin. More information is also available by calling: 800-342-3009."
            cell.SNAPP4ContLabel2.text = "Applications can also be filed in person at: Suffolk County DSS; 3085 Veterans Highway, Ronkonkoma, New York, 11779; - Ph: 631-854-9936 - Emergency Ph: 631-854-9100"
            

            return cell}
        
        }
    
  
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Supplemental Nutrition Assurance Program"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    
    
    

}
