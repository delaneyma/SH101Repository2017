//
//  UUTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/22/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class UUTableViewController: UITableViewController {

    var VCName = ""
    
    var UUTitlesArray = ["Suffolk Co Health Homes", "Suffolk Affiliated Health Centers", "Stony Brook HOME Clinic", "NeedyMeds.org", "Good-Rx"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 90
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 { return 1}
        else{
            return UUTitlesArray.count}
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 && indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UUPicCell", for: indexPath) as! UUPicTableViewCell
            cell.UUPicLabel.text = "The Uninsured and Underinsured"
        return cell}
        else{
        let cell = tableView.dequeueReusableCell(withIdentifier: "UUCell", for: indexPath) as! UUTableViewCell
                cell.UUCellLabel.text = UUTitlesArray[indexPath.row]
                return cell}
    }
    

    
    
    
    //MARK: Navigation Set-up
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DHHSegue" {
            let destVC = segue.destination as! DHHTableViewController
            destVC.VCName = "DHH"}
//
        if segue.identifier == "AHCSegue" {
            let destVC = segue.destination as! AHCTableViewController
            destVC.VCName = "AHC"}
        if segue.identifier == "SBHOMESegue" {
            let destVC = segue.destination as! SBHOMETableViewController
            destVC.VCName = "SBHOME"}

        if segue.identifier == "NMSegue" {
            let destVC = segue.destination as! NMTableViewController
            destVC.VCName = "NM"}
        if segue.identifier == "GRSegue" {
            let destVC = segue.destination as! GRTableViewController
            destVC.VCName = "GR"}
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section, indexPath.row)
        
        if (indexPath.section == 1) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "DHHSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "AHCSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "SBHOMESegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 3) {
            self.performSegue(withIdentifier: "NMSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 4) {
            self.performSegue(withIdentifier: "GRSegue", sender: indexPath);
        }

    }

    
    

}
