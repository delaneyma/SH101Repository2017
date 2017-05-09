//
//  BRIATableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/2/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class BRIATableViewController: UITableViewController {

    
    //    index 1,  3, 4, 5, are reusable cells of P2
    
    var VCName = ""
    var BRIAP2TitlesArray = ["P1", "BRIA's programs and services:", "P3", "Response to Human Trafficking Program (RHTP)", "Refugee Social Services Program (RSSP)", "Refugee Health Promotion (RHP)", "" ]
    var BRIAP2ContArray = ["P1", "• Provide assistance to refugees and their families in achieving economic and social self-sufficiency • Help repatriated citizens arrive safely at home • Provide assistance to victims of human trafficking • Assure proper foster care for unaccompanied refugee and entrant minors.", "P3", "Victims of human trafficking who are confirmed by the New York State referral process by NYS OTDA and DCJS, and are not otherwise eligible for public assistance, may receive benefits through RHTP providers. These include health screening, health care and follow-up medical assistance, job training, job placement, and basic food, clothing and shelter. NYS confirmed victims (who are U.S. citizens and/or children) are assisted with accessing Public Assistance Benefits after confirmation. Those victims who go on to be certified through the federal certification process may be eligible for additional benefits.", "RSSP is an employment services program that provides employability services and other supportive services to refugees that will address barriers to employment such as social and cultural adjustment, job search skills, work experience, and English proficiency. The services provided under this program will assist refugees and their families in achieving economic and social-self-sufficiency as soon as possible after their arrival into the United States.", "Refugee Health Promotion provides funds for part-time Health Access Coordinators (HACs) at resettlement agencies. HACs develop culturally and linguistically appropriate health orientations and classes designed to increase refugee’s health literacy, reduce gaps in services and increase access to public and/or private health insurance.", ""]
    
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
        return 7
    }

    //    index 1,  3, 4, 5, are reusable cells of P2

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BRIAP1", for: indexPath) as! BRIAP1TableViewCell
            cell.BRIAP1TitleLabel.text = "What is it?"
            cell.BRIAP1ContLabel.text = "The Bureau of Refugee and Immigrant Assistance (BRIA) within the Office of Temporary and Disability Assistance is the single state agency responsible for the implementation of services to refugees."
            return cell}
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BRIAP3", for: indexPath) as! BRIAP3TableViewCell
            cell.BRIAP3TitleLabel.text = "What services are available?"
            cell.BRIAP3ContLabel.text = "The BRIA Program Provider for Long Island is Catholic Charities of the Diocese of Rockville Centre. They offer the following programs:"
            return cell}
        if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BRIAP4", for: indexPath) as! BRIAP4TableViewCell
            cell.BRIAP4TitleLabel.text = "Contact information:"
            cell.BRIAP4ContLabel1.text = "Catholic Charities of the Diocese of Rockville Centre, Chief Executive Officer: Ms. Laura A. Cassell, Program Contact: Ms. Carmen Maquilon, Email: maquilon.carmen@catholiccharities.cc "
            cell.BRIAP4ContLabel2.text = "Phone: 631-789-5225, Address: 143 Schleigel Boulevard, Amityville, NY 11701"
            cell.BRIAP4ContLabel3.text = "New York State Office of Temporary and Disability, Bureau of Refugee and Immigrant Assistance, email: bria.contact@otda.ny.gov, "
            cell.BRIAP4ContLabel4.text = "Phone: (518) 402-3096,40 North Pearl Street, 10C, Albany, New York 12243 "
            return cell}
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BRIAP2", for: indexPath) as! BRIAP2TableViewCell
            cell.BRIAP2TitleCell.text = BRIAP2TitlesArray[indexPath.row]
            cell.BRIAP2ContLabel.text = BRIAP2ContArray[indexPath.row]
            return cell
        }

    }
    
    //    index 1,  3, 4, 5, are reusable cells of P2

    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Bureau of Refugee and Immigrant Assistance"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    
    
    
}
