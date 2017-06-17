//
//  LICADDTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/30/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class LICADDTableViewController: UITableViewController {

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
        return 16
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0 {
           let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP1", for: indexPath) as! LICADDP1TableViewCell
            cell.LICADDP1TitleLabel.text = "What is it?"
            cell.LICADDP1ContLabel.text = "LICADD’s mission is to address the addictive climate of our times by providing initial attention and referral services to individuals, families, and children, through intervention, education and professional guidance to overcome the ravages of alcohol and other drug-related problems."
            return cell}
       
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP2", for: indexPath) as! LICADDP2TableViewCell
            cell.LICADDP2TitleLabel.text = "What Programs do they offer?"
            return cell}
        
    
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Family, Individual, Workplace Chemical Dependency Interventions:"
            cell.LICADDP3ContLabel.text = "Professionally guided educational and motivational processes that help a family or workplace “team”, prepare themselves to approach a loved one in a clear, respectful, and loving way about their drug and/or alcohol use with the immediate goal of encouraging them to accept help. Family members are given the tools to care for themselves and the identified patient, if agreeable to treatment, is given the proper assistance to access competent, affordable treatment-on-demand."
            return cell}
       
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Family Education and Support Series:"
            cell.LICADDP3ContLabel.text = "Professionally facilitated workshops designed for families who are living with someone who is actively abusing substances. This three-part series addresses the disease of alcoholism and drug addiction; the role of the family; and treatment modalities for addiction. Conducted in a supportive group setting, encouraging entire families to attend together. Completion of this series is often a first step towards conducting a planned family intervention."
            return cell}
        
       
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Chemical Dependency Evaluations and Treatment Referral Services:"
            cell.LICADDP3ContLabel.text = "Provides on and off-site professional alcohol and drug related consultation, guidance and custom-tailored treatment referral services for adolescents, adults, and families."
            return cell}
        
        
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Relapse Prevention Services:"
            cell.LICADDP3ContLabel.text = "Provides individualized recovery coaching, case management and relapse prevention groups creating a safety-net of aftercare and support services following substance abuse treatment. LICADD’s certified relapse prevention professional staff can help recovering individuals successfully transition from inpatient treatment back home or into a sober living environment."
            return cell}
        
        
        if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Prevention through Education:"
            cell.LICADDP3ContLabel.text = "Provides alcohol and other drug risk education for individual, family, and communities from kindergarten through adulthood. Educational services include adolescent evaluations, elementary and middle school interactive modules, support services for children of addicted parents and parent-child communication workshops."
            return cell}
        
        
        if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Mentoring Services:"
            cell.LICADDP3ContLabel.text = "LICADD’s BUDDY Mentoring Program delivers a wide range of support services to at-risk children of incarcerated parents helping to break the multi-generational cycle of addiction and incarceration. Adult peer-to-peer mentoring services deliver a full range of transitional services to aid the successful transition and re-entry process for ex-offenders back to the community."
            return cell}
        
        
        if indexPath.row == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP2", for: indexPath) as! LICADDP2TableViewCell
            cell.LICADDP2TitleLabel.text = "Contact information:"
            return cell}
        
        
        if indexPath.row == 9 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Westbury Office In Nassau County: "
            cell.LICADDP3ContLabel.text = "1025 Old Country Road, Suite 221, Westbury, NY 11590 - (516) 747-2606 - Hours: Mon, Thurs, Fri: 8:30am-5:00pm - Tues & Wed: 8:30am-9:00pm -- Sat: 9:00am-4:00pm - (Walk-ins Welcome)"
            return cell}
        
        
        if indexPath.row == 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP4", for: indexPath) as! LICADDP4TableViewCell
            return cell}
        
        
        if indexPath.row == 11 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Holbrook Office in Suffolk County: "
            cell.LICADDP3ContLabel.text = "4400 Veteran's Highway, Suite 204, Holbrook, NY 11741 - - (631) 979-1700  Mon & Thurs : 8:30am-9:00pm; Tues, Wed, Fri: 8:30am-5:00pm; Sat: 9:00am-4:00pm"
            return cell}
        
        
        if indexPath.row == 12 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP5", for: indexPath) as! LICADDP5TableViewCell
            return cell}
        
        
        if indexPath.row == 13 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Riverhead Office in Suffolk County: "
            cell.LICADDP3ContLabel.text = "877 East Main Street, Suite 107, Riverhead, NY 11901 -- (631) 284-9583, Hours: By Appointment"
            return cell}

        
        if indexPath.row == 14 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP6", for: indexPath) as! LICADDP6TableViewCell
            return cell}
            
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP7", for: indexPath) as! LICADDP7TableViewCell
            return cell}
    }
   
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Long Island Council on Alcoholism and Drug Dependence"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

    
    
    
    
}
