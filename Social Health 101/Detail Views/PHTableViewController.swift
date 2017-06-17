//
//  PHTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/30/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class PHTableViewController: UITableViewController {

    var VCName = ""
    var PHP1TitlesArray = ["What is it?", "How does it work?", "How does billing work?", "", ""]
    var PHP1ContArray = ["Phoenix House is a nonprofit drug & alcohol rehabilitation organization with over 120 programs in ten states, serving 18000 adults and teens each year. They are committed to treating the whole person — and their families — with caring, qualified professionals in the fields of psychiatry, medicine, mental health, social work, education, and recovery support. They offer affordable evidence-based care to teens, adults, and families.  At their Wainscott, Long Island Phoenix House Academy, teens receive residential care while attending on-site, accredited high schools.", "With short-term and long-term care options, Phoenix House treats those struggling with addiction wherever they need to be – at home, a clinic, or a residential treatment facility. Clients (patients) may enter treatment at any point along the Phoenix continuum of care, from medical detoxification and stabilization, to residential treatment, to outpatient care, to sober living housing.", "Insurance: Phoenix House is an in-network provider for many major insurance carriers, HMOs, and managed care providers: Beacon Health, Cigna, Emblem Health, Empire Blue Cross Blue Shield (select policies), United Healthcare, United Behavioral Health, Oxford", "", ""]
    
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
        return 7
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PHP2", for: indexPath) as! PHP2TableViewCell
            cell.PHP2TitleLabel.text = "Contact information:"
            cell.PHP2ContLabel.text = "Contact 1 888 671 9392 for more information."
            return cell}
        
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PHP3", for: indexPath)as! PHP3TableViewCell
            cell.PHP3ContLabel.text = "Self Payment: Phoenix House also accepts self-payment, with different rates for services depending on the program. As a not-for-profit provider, they believe strongly in making treatment available to those who need it by providing state-, county-, and Medicaid-funded services to qualifying individuals."
            return cell}
            
            
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PHP4", for: indexPath) as! PHP4TableViewCell
            return cell}
            
            
        if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PHP5", for: indexPath) as! PHP5TableViewCell
            return cell}
            
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PHP1", for: indexPath)as! PHP1TableViewCell
            cell.PHP1TitleLabel.text = PHP1TitlesArray[indexPath.row]
            cell.PHP1ContLabel.text = PHP1ContArray[indexPath.row]
            return cell
        }

    }
    
    
    

    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Phoenix House - Rehabilitation Support"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

}
