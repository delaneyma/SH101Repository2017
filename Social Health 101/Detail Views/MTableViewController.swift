//
//  MTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/30/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MTableViewController: UITableViewController {

     var VCName = ""
    var MP3TitleArray = ["", "", "Hauppauge Intake and Maintenance Program","", "East End Methadone Maintenance Program", ""]
    var MP3ContArray = ["", "", "Ph: 853-7373 Fax: 853-7376 - Address: 200 Wireless Blvd, Hauppauge, NY 11788 ", "*3*", "Ph: 852-2680 Fax: 852-2674 - Address: 300 Center Drive, Riverhead, NY 11901", "*5*"]
    
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
        return 6
    }

       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MP1", for: indexPath) as! MP1TableViewCell
            cell.MP1TitleLabel.text = "What is it?"
            cell.MP1ContLabel.text = "There are two licensed methadone clinics in Suffolk County."
            return cell        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MP2", for: indexPath) as! MP2TableViewCell
            cell.MP2TitleLabel.text = "Contact information:"
            return cell}
            
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MP4", for: indexPath) as! MP4TableViewCell
                        return cell}
            
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MP5", for: indexPath) as! MP5TableViewCell
         
            return cell}
            
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MP3", for: indexPath) as! MP3TableViewCell
            cell.MP3TitleLabel.text = MP3TitleArray[indexPath.row]
            cell.MP3ContLabel.text = MP3ContArray[indexPath.row]
            return cell }
    }
    
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Methadone Treatment Clinics"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
  
    
    
}
