//
//  LATableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/22/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LATableViewController: UITableViewController {

    var VCName = ""
    var LATitleArray = ["Legal Aid Society of Suffolk Co", "Nassau-Suffolk Law Services Com.", "Touro Law Center Senior Citizens' Law Program"]
    
    override func viewDidLoad() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 90
        super.viewDidLoad()
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
        else {
            return LATitleArray.count}
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LAPicCell", for: indexPath) as! LAPicTableViewCell
        cell.LAPicLabel.text = "Legal Assistance"
            return cell}
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "LACell", for: indexPath) as! LATableViewCell
            cell.LACellTitleLabel.text = LATitleArray[indexPath.row]
            return cell}
    }


   
    //MARK: Navigation Set-up
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "LASSSegue" {
            let destVC = segue.destination as! LASSTableViewController
            destVC.VCName = "LASS"}
        
        if segue.identifier == "NSLSSegue" {
            let destVC = segue.destination as! NSLSTableViewController
            destVC.VCName = "NSLS"}
        
        if segue.identifier == "TLCSegue" {
            let destVC = segue.destination as! TLCTableViewController
            destVC.VCName = "TLC"}
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section, indexPath.row)
        
        if (indexPath.section == 1) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "LASSSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "NSLSSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "TLCSegue", sender: indexPath);
                    }
        
    }

    
    
    
    
}
