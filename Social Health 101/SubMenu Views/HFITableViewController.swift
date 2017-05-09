//
//  HFITableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/22/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class HFITableViewController: UITableViewController {

    var VCName = ""
    
    var HFITitleArray = ["Supplimental Nutrition Assistance Program", "Food Pantries"]
    
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
        if section == 0 {return 1}
        else {
            return HFITitleArray.count}}

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "HFIPicCell", for: indexPath) as! HFIPicTableViewCell
        cell.HFIPicLabel.text = "Hunger and Food Insecurity"
        return cell }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HFICell", for: indexPath) as! HFITableViewCell
            cell.HFICellLabel.text = HFITitleArray[indexPath.row]
            return cell}
        }
    

    
    
    
    //MARK: Navigation Set-up
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SNAPSegue" {
            let destVC = segue.destination as! SNAPTableViewController
            destVC.VCName = "SNAP"}
        
        if segue.identifier == "FPSegue" {
            let destVC = segue.destination as! FPTableViewController
            destVC.VCName = "FP"}
        
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section, indexPath.row)
        
        if (indexPath.section == 1) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "SNAPSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "FPSegue", sender: indexPath);
        }
        
        
    }

    
    
    
}
