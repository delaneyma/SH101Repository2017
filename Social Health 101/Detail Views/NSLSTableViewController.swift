//
//  NSLSTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class NSLSTableViewController: UITableViewController {

    var VCName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 250
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "NSLSP1", for: indexPath) as! NSLSP1TableViewCell
            cell.NSLSP1TitleLabel.text = "What is it?"
            cell.NSLSP1ContLabel1.text = "The Nassau-Suffolk Law Services Committee is committed to helping people in need vindicate their rights under the law by provide free legal services in thousands of cases each year as well as legal support to church, agency and grass roots organizations that work with the poor."
            cell.NSLSP1ContLabel2.text = "NSLS is dedicated to providing equal access to basic human rights and services through provision of high quality legal representation, public information and community advocacy training to ensure that low income, disabled and disadvantaged individuals have equal access to the civil justice system on Long Island."
            cell.NSLSP1ContLabel3.text = "The staff is comprised of attorneys, paralegals, social workers and support staff. The social work component is a unique feature of the program and is based on the recognition that some clients may need special support and services to manage and deal effectively with the legal system."
            
            return cell}
            
            
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NSLSP3", for: indexPath) as! NSLSP3TableViewCell
            return cell}
            
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NSLSP2", for: indexPath) as! NSLSP2TableViewCell
            cell.NSLSP2TitleLabel.text = "Contact information:"
            cell.NSLSP2ContLabel1.text = "Appointments are necessary and can be made by phone."
            cell.NSLSP2TitleLabel2.text = "Nassau County:"
            cell.NSLSP2ContLabel2.text = "Heampstead office Ph:(516) 292-8100 - Senior Citizen Law Project Ph:(516) 292-8088 - Volunteers Lawyers Project, Ph: 516) 292-8299"
            cell.NSLSP2ContLabel3.text = "Heampstead office address: 1 Helen Keller Way (5th floor), Heampstead, NY 11550."
            cell.NSLSP2TitleLabel3.text = "Suffolk County:"
            cell.NSLSP2ContLabel4.text = "Islandia office (serves Suffolk West of Route 112) Ph: (631) 232-2400. -  Address: 1757 Veterans Highway – Suite 50, Islandia, NY 11749"
            cell.NSLSP2ContLabel5.text = "Riverhead Office (serves Suffolk East of Route 112) Ph: (631) 369-1112. -  Address: 400 West Main Street, Suite 301, Riverhead, NY 11901"
            
            return cell
        }
    }
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Nassau-Suffolk Law Services Committee, Inc."
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    

    
    
    
    
}
