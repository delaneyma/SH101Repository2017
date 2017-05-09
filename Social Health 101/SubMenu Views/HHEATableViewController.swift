//
//  HHEATableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/22/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class HHEATableViewController: UITableViewController {

    var VCName = ""
    var HHEATitlesArray = ["Homeless Shelters", "Home Energy Assistance Program", "Emergency Assistance Programs", "Safety Net Assistance (SNA)"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 90    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {return 1}
        else{
            return HHEATitlesArray.count}
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "HHEAPicCell", for: indexPath) as! HHEAPicTableViewCell
        cell.HHEAPicLabel.text = "Housing, Heat, and Emergency Assistance"
            return cell}
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier:"HHEACell", for: indexPath) as! HHEATableViewCell
            cell.HHEACellLabel.text = HHEATitlesArray[indexPath.row]
            return cell }
    }


    
    //MARK: Navigation Set-up
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "HSSegue" {
            let destVC = segue.destination as! HSTableViewController
            destVC.VCName = "HS"}
        
        if segue.identifier == "HEAPSegue" {
            let destVC = segue.destination as! HEAPTableViewController
            destVC.VCName = "HEAP"}
        if segue.identifier == "EAPSegue" {
            let destVC = segue.destination as! EAPTableViewController
                destVC.VCName = "EAP"}
  
        
        if segue.identifier == "SNASegue" {
            let destVC = segue.destination as! SNATableViewController
                destVC.VCName = "SNA"}
        
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section, indexPath.row)
        
        if (indexPath.section == 1) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "HSSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "HEAPSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "EAPSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 3) {
            self.performSegue(withIdentifier: "SNASegue", sender: indexPath);
        }


        
    }
    

    
    
    
    
}
