//
//  LASSTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LASSTableViewController: UITableViewController {

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
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LASSP1", for: indexPath) as! LASSP1TableViewCell
            cell.LASSP1TitleLabel.text = "What is it?"
            cell.LASSP1ContLabel.text = "The Legal Aid Society of Suffolk County has several support resources for those in need of llegal support."

            return cell}
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LASSP2", for: indexPath) as! LASSP2TableViewCell
            cell.LASSP2TitleLabel.text = "Contact information:"
            cell.LASSP2ContLabel.text = "John P. Cohalan, Jr. Courthouse, 400 Carleton Ave, 4th Floor, Central Islip, NY 11722; email:admin@sclas.org"
            cell.LASSP2ContLabel2.text = "By Phone:"
            
        return cell}
        
    }
   
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Legal Aid Society of Suffolk County"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

    
    
    
    
}
