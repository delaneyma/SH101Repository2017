//
//  APSTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/1/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class APSTableViewController: UITableViewController {

    var VCName = ""
    var APSP1TitlesArray = ["What is it?", "Contact Information", ""]
    var APSP1ContArray = ["Adult protective Services (APS) investigates referrals of abuse, neglect and financial exploitation of adults aged 18 years and older. APS assesses the need, and arranges for or provides services to families and individuals. These services are also for persons who are physically/mentally impaired, harmed/threatened by the actions of themselves or others (including their families), or have unmet essential needs (such as food, clothing, shelter, medical care, etc) and have no one able or willing to help. Special attention is given to victims of elder abuse or elder neglect.", "Phone:(631)-854-3195, (631)-854-3196 or (631)-854-3197", ""]
    
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
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 2 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "APSP2", for: indexPath) as! APSP2TableViewCell
        return cell}
        
        else{
        let cell = tableView.dequeueReusableCell(withIdentifier: "APSP1", for: indexPath) as! APSP1TableViewCell

        cell.APSP1TitleLabel.text = APSP1TitlesArray[indexPath.row]
        cell.APSP1ContLabel.text = APSP1ContArray[indexPath.row]
            return cell}
    }
  
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Adult Protective Services"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
 
    
    
    
}
