//
//  PETableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/28/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class PETableViewController: UITableViewController {

    var VCName = ""
    
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
        return 5
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PEP1", for: indexPath) as! PEP1TableViewCell
            cell.PEP1TitleLabel.text = "What is it?"
            cell.PEP1ContLabel.text = "Suffolk County has a number of resources devoted to the management of psychiatric emergencies."
            return cell
        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PEP2", for: indexPath)as! PEP2TableViewCell
            cell.PEP2TitleLabel.text = "What services do they provide?"
            return cell  }
            
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PEP3", for: indexPath)as! PEP3TableViewCell
            cell.PEP3TitleLabel.text = "Stony Brook University Hospital Comprehensive Psychiatric Emergency Program (CPEP):"
            cell.PEP3ContLabel.text = "CPEP is a hospital-based emergency psychiatric service open 24 hours a day, 7 days per week licensed by the New York State Office of Mental Health. The program exists to provide an organized system for responding to psychiatric emergencies for evaluation, intervention, treatment and referral for the residents of Suffolk County who have demonstrated a need for emergency psychiatric evaluation or treatment. The staff is a specially trained group of psychiatrists, social workers, nurses, and nursing assistants who are committed to providing the best emergency care to your family member, significant other or patient/client.Phone: 631-444-6050"
            return cell}
            
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PEP4", for: indexPath)as! PEP4TableViewCell
            
            cell.PEP4TitleLabel.text = "Suffolk County Mobile Crisis Unit/Mental Health Hotline:"
            cell.PEP4ContLabel.text = "Offers crisis intervention services to individuals in the Community who are experiencing psychiatric/emotional problems. The team will make referrals for after care if necessary or arrange for hospitalization. Phone: 631-952-3333"
            return cell}

        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PEP5", for: indexPath)as! PEP5TableViewCell
            cell.PEP5TitleLabel.text = "National Suicide Prevention Lifeline:"
            cell.PEP5ContLabel.text = "The National Suicide Prevention Lifeline provides free and confidential emotional support to people in suicidal crisis or emotional distress 24 hours a day, 7 days a week, across the United States. The Lifeline is comprised of a national network of over 160 local crisis centers, combining custom local care and resources with national standards and best practices. Phone: 800-273-8255 - suicidepreventionlifeline.org"
            return cell}
    }
    

    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Psychiatric Emergencies"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    
    
    
}
