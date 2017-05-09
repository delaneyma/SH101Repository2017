//
//  MHA1TableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/27/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MHA1TableViewController: UITableViewController {

    
    var VCName = ""
    var MHAP1Array = ["Suffolk County Mental Health Clinics", "Psychiatric Emergencies", "Assoc. for Mental Health and Wellness", "Victims Information Bureau of Suffolk", "Long Island Crisis Center"]
    var MHAP2Array = ["LI Counsel on Alcoholism and Drug Dependence ", "Phoenix House", "Inpatient Withdrawl and Detox., and Rehab", "Methadone Treatment"]
    var MHAP3Array = ["LI Against Domestic Violence", "Adult Protective Services", "Brighter Tomorrows Shelter", "The Retreat- Domestic Violence Shelter"]
    var MHAP4Array = ["Suffolk Psychiatric Case Management", "Suffolk Co Mental Health Housing"]
    
    
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
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1}
        if section == 1 {
            return 5}
        if section == 2 {
            return 4}
        if section == 3 {
            return 4}
        else {
            return 2}
    }

    
    
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MHAPicCell", for: indexPath) as! MHAPicTableViewCell
            cell.MHAPicLabel.text = "Mental Health and Addiction"
            return cell}
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MHAP1", for: indexPath) as! MHATableViewCell
            cell.MHATitleLabel.text = MHAP1Array[indexPath.row]
            return cell}
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MHAP2", for: indexPath) as! MHAP2TableViewCell
            cell.MHAP2TitleLabel.text = MHAP2Array[indexPath.row]
            return cell}
        if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MHAP3", for: indexPath) as! MHAP3TableViewCell
            cell.MHAP3TitleLabel.text = MHAP3Array[indexPath.row]
            return cell}
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MHAP4", for: indexPath) as! MHAP4TableViewCell
            cell.MHAP4TitleLabel.text = MHAP4Array[indexPath.row]
            return cell}
    }


   
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        if section == 0 {
            return nil}
        if section == 1 {
        let HeaderView = Bundle.main.loadNibNamed("HeaderCellFile", owner: self, options: nil)?.first as! HeaderCellFile
        
        HeaderView.HeaderLabel.text = "Patient Care Resources"
        
            return HeaderView}
        if section == 2 {
            let HeaderView = Bundle.main.loadNibNamed("HeaderCellFile", owner: self, options: nil)?.first as! HeaderCellFile
            
            HeaderView.HeaderLabel.text = "Addiction Resources"
            
            return HeaderView}
        if section == 3 {
            let HeaderView = Bundle.main.loadNibNamed("HeaderCellFile", owner: self, options: nil)?.first as! HeaderCellFile
            
            HeaderView.HeaderLabel.text = "Domestic Violence Resources"
            
            return HeaderView}
        else {
            let HeaderView = Bundle.main.loadNibNamed("HeaderCellFile", owner: self, options: nil)?.first as! HeaderCellFile
            
            HeaderView.HeaderLabel.text = "Housing and Case Management"
            
            return HeaderView}
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
    
    

    //MARK: Navigation Set-up
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SCMHSegue" {
            let destVC = segue.destination as! SCMHTableViewController
            destVC.VCName = "SCMH"}

        if segue.identifier == "PESegue" {
            let destVC = segue.destination as! PETableViewController
            destVC.VCName = "PE"}

        if segue.identifier == "AMHWSegue" {
            let destVC = segue.destination as! AMHWTableViewController
            destVC.VCName = "AMHW"}
        
        if segue.identifier == "VIBSSegue" {
            let destVC = segue.destination as! VIBSTableViewController
            destVC.VCName = "VIBS"}

        if segue.identifier == "LICCSegue" {
            let destVC = segue.destination as! LICCTableViewController
            destVC.VCName = "LICC"}
        if segue.identifier == "LICADDSegue" {
            let destVC = segue.destination as! LICADDTableViewController
            destVC.VCName = "LICADD"}
        if segue.identifier == "PHSegue" {
            let destVC = segue.destination as! PHTableViewController
            destVC.VCName = "PH"}
        if segue.identifier == "IWDRSegue" {
            let destVC = segue.destination as! IWDRTableViewController
            destVC.VCName = "IWDR"}
        if segue.identifier == "MSegue" {
            let destVC = segue.destination as! MTableViewController
            destVC.VCName = "M"}
        if segue.identifier == "LIADMSegue" {
            let destVC = segue.destination as! LIADMTableViewController
            destVC.VCName = "LIADM"}
        
        if segue.identifier == "APSSegue" {
            let destVC = segue.destination as! APSTableViewController
            destVC.VCName = "APS"}
        
        if segue.identifier == "BTSSegue" {
            let destVC = segue.destination as! BTSTableViewController
            destVC.VCName = "BTS"}
      
        if segue.identifier == "RDVSSegue" {
            let destVC = segue.destination as! RDVSTableViewController
            destVC.VCName = "RDVS"}
        if segue.identifier == "SPCMSegue" {
            let destVC = segue.destination as! SPCMTableViewController
            destVC.VCName = "SS"}
        if segue.identifier == "SCMHHSegue" {
            let destVC = segue.destination as! SCMHHTableViewController
            destVC.VCName = "SS"}

        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section, indexPath.row)
        
        if (indexPath.section == 1) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "SCMHSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "PESegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "AMHWSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 3) {
            self.performSegue(withIdentifier: "VIBSSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 4) {
            self.performSegue(withIdentifier: "LICCSegue", sender: indexPath);
        }
        if (indexPath.section == 2) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "LICADDSegue", sender: indexPath);
        }
        if (indexPath.section == 2) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "PHSegue", sender: indexPath);
        }
        if (indexPath.section == 2) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "IWDRSegue", sender: indexPath);
        }
        if (indexPath.section == 2) && (indexPath.row == 3) {
            self.performSegue(withIdentifier: "MSegue", sender: indexPath);
        }
        if (indexPath.section == 3) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "LIADMSegue", sender: indexPath);
        }
        if (indexPath.section == 3) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "APSSegue", sender: indexPath);
        }
        if (indexPath.section == 3) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "BTSSegue", sender: indexPath);
        }
        if (indexPath.section == 3) && (indexPath.row == 3) {
            self.performSegue(withIdentifier: "RDVSSegue", sender: indexPath);
        }
        if (indexPath.section == 4) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "SPCMSegue", sender: indexPath);
        }
        if (indexPath.section == 4) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "SCMHHSegue", sender: indexPath);
        }
        
    }


}
