//
//  NMTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class NMTableViewController: UITableViewController {

     var VCName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200

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
            let cell = tableView.dequeueReusableCell(withIdentifier: "NMP1", for: indexPath) as! NMP1TableViewCell
            cell.NMP1TitleLabel.text = "What is it?"
            cell.NMP1ContLabel.text = "NeedyMeds is a 501(c)(3) national non-profit information resource dedicated to helping people locate assistance programs to help them afford their medications and other healthcare costs."
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NMP2", for: indexPath) as! NMP2TableViewCell
            cell.NMP2TitleLabel.text = "How does it work?"
            cell.NMP2ContLabel1.text = "NeedyMeds is not a program, it is an online information source. They list programs that may provide patients with assistance and then patients  apply directly to those programs. NeedyMeds doesn't process any applications, determine eligibility, or supply medications."
            cell.NMP2ContLabel2.text = "NeedyMeds runs a toll-free helpline to assist those who do not have access to a computer or who might need further assistance. Helpline representatives are available weekdays 9am to 4pm Eastern Time and can link patients to programs and services."
            return cell}
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NMP3", for: indexPath) as! NMP3TableViewCell
            cell.NMP3TitleLabel.text = "Contact Information:"
            
            return cell}
    }
    
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Needy-Meds.org"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    
}
