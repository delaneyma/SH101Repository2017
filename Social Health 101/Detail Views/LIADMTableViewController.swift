//
//  LIADMTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/30/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LIADMTableViewController: UITableViewController {

    
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
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LIADMP1", for: indexPath) as! LIADMP1TableViewCell
            cell.LIADMP1TitleLabel.text = "What is it?"
            cell.LIADMP1ContLabel.text = "L.I. Against Domestic Violence (LIDAV) provides a range of services that help over 14,000 Long Island adults and children each year to escape from abusive relationships and build new lives."
            return cell
        }
        
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LIADMP2", for: indexPath) as! LIADMP2TableViewCell
            cell.LIADMP2ContLabel.text = "LIDAV is committed to the empowerment of victims and survivors of domestic violence through supportive services including 24/7 hotline, counseling, vocational training, emergency shelter, legal advocacy, and prevention and education resources."
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LIADMP3", for: indexPath) as! LIADMP3TableViewCell
            cell.LIADMP3TitleLabel.text = "Contact information:"
            return cell
        }
        
    }
    
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Long Island Against Domestic Violence"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
}
