//
//  CPWTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/22/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class CPWTableViewController: UITableViewController {

    var VCName = ""
    
    var CPWTitleArray = ["Keeping Families Healthy", "Ronald McDonald House", "Ronald McDonald Room (Inpatient)", "Women, Infants, and Children (WIC)", "Maternal and Infant Community Health Collaborative", "Immunization Action Program (IAP)", "Fit Families for Life", "Child Protective Services of Suffolk County", "Temporary Assistance to Needy Families (TANF)"]
    
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
            return CPWTitleArray.count}
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Display Pic Cell
        if indexPath.section == 0  && indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CPWPicCell", for: indexPath) as! CPWPicTableViewCell
            cell.CPWPicCellLabel.text = "Children and Pregnant Women"
            return cell  }
        
        // Display CPW Cell
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CPWCell", for: indexPath) as! CPWTableViewCell
            cell.CPWTitleLabel.text = CPWTitleArray[indexPath.row]
            return cell}
        
    }

    
    
    
    
//    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        if section == 1 {
//            let FooterView = Bundle.main.loadNibNamed("FooterCell", owner: self, options: nil)?.first as! FooterCell
//            return FooterView}
//        else { return nil}}
//    
//    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 10
//    }
    
    
    
    
    

    //MARK: Navigation Set-up
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "KFHSegue" {
            let destVC = segue.destination as! KFHTableViewController
            destVC.VCName = "KFH"}
        
        if segue.identifier == "RMHSegue" {
            let destVC = segue.destination as! RMHTableViewController
            destVC.VCName = "RMH"}

        if segue.identifier == "RMRSegue" {
            let destVC = segue.destination as! RMRTableViewController
            destVC.VCName = "RMR"}
        
        if segue.identifier == "WICSegue" {
            let destVC = segue.destination as! WICTableViewController
            destVC.VCName = "WIC"}
        
        if segue.identifier == "MICHCSegue" {
            let destVC = segue.destination as! MICHCTableViewController
            destVC.VCName = "MICHC"}
        if segue.identifier == "IAPSegue" {
            let destVC = segue.destination as! IAPTableViewController
            destVC.VCName = "IAP"}
        if segue.identifier == "FFLSegue" {
            let destVC = segue.destination as! FFLTableViewController
            destVC.VCName = "FFL"}
        if segue.identifier == "CPSSegue" {
            let destVC = segue.destination as! CPSTableViewController
            destVC.VCName = "CPS"}
        if segue.identifier == "TANFSegue" {
            let destVC = segue.destination as! TANFTableViewController
            destVC.VCName = "TANF"}
        //        if segue.identifier == "SSSegue" {
        //            let destVC = segue.destination as! CPWTableViewController
        //            destVC.VCName = "SS"}
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section, indexPath.row)
        
        if (indexPath.section == 1) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "KFHSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "RMHSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "RMRSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 3) {
            self.performSegue(withIdentifier: "WICSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 4) {
            self.performSegue(withIdentifier: "MICHCSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 5) {
            self.performSegue(withIdentifier: "IAPSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 6) {
            self.performSegue(withIdentifier: "FFLSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 7) {
            self.performSegue(withIdentifier: "CPSSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 8) {
            self.performSegue(withIdentifier: "TANFSegue", sender: indexPath);
        }
//        if (indexPath.section == 1) && (indexPath.row == 2) {
//            self.performSegue(withIdentifier: "SSSegue", sender: indexPath);
//        }
        
        // else { self.performSegue(withIdentifier: "LA", sender: indexPath)}
        
    }


}
