//
//  AHCTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/3/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class AHCTableViewController: UITableViewController {

    var VCName = ""
    var AHCP3TitlesArray = ["P1", "P2", "Amityville  - HRHCare Maxine S. Postal Tri-Community Health Center", " Brentwood - HRHCare Brentwood Health Center", "Greenlawn  - The Dolan Family Health Center at Greenlawn", "Coram  - HRHCare The Elsie Owens Health Center at Coram", "Southampton  - HRHCare Kraus Family Health Center of the Hamptons", "Patchogue  - HRHCare The Health Center at Patchogue", "Riverhead  - The HRHCare Health Center at Riverhead", "Shirley  - HRHCare Marilyn Shellabarger Health Center at Shirley", "Wyandanch - HRHCare Martin Luther King, Jr. Community Health Center"]
    var AHCP3ContArray1 = ["P1", "P2", "Operated by Hudson River HealthCare, Inc., Hours: Monday, Wednesday, Friday: 9:00 AM - 5:00 PM; Tuesday & Thursday: 9:00 AM - 8:00 PM", "Operated by Hudson River HealthCare, Inc., Hours: Monday, Tuesday, Wednesday, Thursday: 9:00 AM - 8:00 P, Friday: 9:00 AM - 5:00 PM, Saturday: 8:00 AM - 4:00 PM", "Operated by Huntington Hospital, Hours: Monday, Tuesday, Wednesday: 8:30 AM - 5:00 PM, Thursday: 11:30 AM - 8:00 PM, Friday: 8:00 AM - 4:00 PM", "Operated by Hudson River HealthCare, Inc., Hours: Monday, Tuesday, Wednesday, Friday: 8:00 AM - 5:00 PM, Thursday: 8:00 AM - 8:00 PM, Every other Saturday: 8:00 AM - 4:00 PM", "Operated by Hudson River HealthCare, Inc., Hours: Monday, Thursday, Friday: 8:00 AM - 5:00 PM, Tuesday & Wednesday: 8:00am-8:00pm, Every other Saturday: 8:00am-4:00pm", "Operated by Hudson River HealthCare, Inc.,Hours: Monday, Wednesday, Friday: 9:00 AM - 5:00 PM, Tuesday & Thursday: 9:00 AM - 8:00 PM, Saturday: 8:00 AM - 4:00 PM", "Operated by Hudson River HealthCare, Inc., Hours: Monday - Friday 9:00 AM - 5:00 PM", "Operated by Hudson River HealthCare, Inc.,Hours: Tuesday, Thursday, Friday: 9:00 AM - 5:00 PM, Monday & Wednesday: 9:00 AM - 8:00 PM, Saturday: Closed, Sunday: 8:00 AM - 4:00 PM", "Operated by Hudson River HealthCare, Inc., Hours: Monday - Friday: 9:00 AM - 9:00 PM, Saturday: 8:00 AM - 4:00 PM"]
    var AHCP3ContArray2 = ["P1", "P2", "Ph: (631) 716-9026, Address: 1080 Sunrise Highway, Amityville, NY 11701", "Ph: (631) 416-5480, Address:  1869 Brentwood Road, Brentwood, NY 11717", "Ph: (631) 425-5250, Address: 284 Pulaski Road, Greenlawn, NY 11740", "Ph: (631) 320-2220, Address: 82 Middle Country Road, Coram, NY 11727", "Ph: (631) 268-1008, Address: 330 Meeting House Lane, Southampton, NY 11968", "Ph: (631) 866-2030, Address: 365 East Main Street, Patchogue, NY 11772", "Ph: (631) 574-2580, Address: County Center, 300 Center Drive, Riverhead, NY 11901", "Ph: (631) 490-3040, Address: 550 Montauk Highway & Dorsett Place, Shirley, NY 11967", "Ph: (516) 214-8020, Address: 1556 Straight Path, Wyandanch, NY 11798"]
    
    // there's 9 reused and 2 others.
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200      }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AHCP1", for: indexPath)as! AHCP1TableViewCell
            cell.AHCP1TitleLabel.text = "What is it?"
            cell.AHCP1ContLabel.text = "Affiliated Family Health Centers are health clinics that accept all patients regardless of insurance status and offer sliding scale payment options for the uninsured."
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AHCP2", for: indexPath)as! AHCP2TableViewCell
            cell.AHCP2TitleLabel.text = "Contact information:"
            return cell}
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AHCP3", for: indexPath) as! AHCP3TableViewCell
            cell.AHCP3TitleLabel.text = AHCP3TitlesArray[indexPath.row]
            cell.AHCP3ContLabel1.text = AHCP3ContArray1[indexPath.row]
            cell.AHCP3ContLabel2.text = AHCP3ContArray2[indexPath.row]
            return cell}
    }
    
    
    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Suffolk County Affiliated Health Centers"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    
    

}
