//
//  NIRUTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/22/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class NIRUTableViewController: UITableViewController {

    var VCName = ""
    var NIRUTitlesArray = ["The Bureau of Refugee and Immigrant Assistance", "New York State Office for New Americans", "Central American Refugee Center NY", "Make the Road New York - Brentwood"]
    
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
        else { return NIRUTitlesArray.count}
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NIRUPicCell", for: indexPath) as! NIRUPicTableViewCell
        cell.NIRUPicLabel.text = "New Immigrants and the Undoccumented"
            return cell}
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NIRUCell", for: indexPath) as! NIRUTableViewCell
            cell.NIRUCellTitle.text = NIRUTitlesArray[indexPath.row]
            return cell}
    }


    //MARK: Navigation Set-up
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "BRIASegue" {
            let destVC = segue.destination as! BRIATableViewController
            destVC.VCName = "BRIA"}
        
        if segue.identifier == "ONASegue" {
            let destVC = segue.destination as! ONATableViewController
            destVC.VCName = "ONA"}
        if segue.identifier == "CACCSegue" {
            let destVC = segue.destination as! CACCTableViewController
            destVC.VCName = "CACC"}
        
        if segue.identifier == "MRSegue" {
            let destVC = segue.destination as! MRTableViewController
            destVC.VCName = "MR"}
        
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section, indexPath.row)
        
        if (indexPath.section == 1) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "BRIASegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "ONASegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "CACCSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 3) {
            self.performSegue(withIdentifier: "MRSegue", sender: indexPath);
        }
        
        
        
    }


    
    
    
}
