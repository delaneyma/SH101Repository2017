//
//  BTSTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class BTSTableViewController: UITableViewController {

    var VCName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 150
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
       
        if indexPath.row == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "BTSP1", for: indexPath) as! BTSP1TableViewCell
        cell.BTSP1TitleLabel.text = "What is it?"
        cell.BTSP1ContLabel.text = "Brighter Tomorrows provides shelter, counseling and advocacy for victims of domestic violence. They can accommodate 19 women and children. Offers case management, court advocacy, Department of Social Services advocacy, and group/individual counseling for both adults and children. They have a child witness/victim of domestic violence program as well."
            return cell}
        
        
        if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "BTSP3", for: indexPath) as! BTSP3TableViewCell
            return cell}
            
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "BTSP2", for: indexPath) as! BTSP2TableViewCell
        cell.BTSP2TitleLabel.text = "Contact Information:"
            cell.BTSP2ContLabel.text = "24-Hour Hotline, 7 days a week: (631) 395-1800 - Office Ph: (631) 395-1801 or (631) 395-3116  -- E-mail: info@brightertomorrowsinc.org"
            return cell}
        }
   
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Brighter Tomorrows Shelter"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    

    
    
    
    
}
