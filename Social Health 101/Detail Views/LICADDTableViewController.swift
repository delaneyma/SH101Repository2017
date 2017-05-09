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
    var LICADDP2ContArray = ["", "", "•Family Education and Support Series: professionally facilitated workshops designed for families who are living with someone who is actively abusing substances. This three-part series addresses the disease of alcoholism and drug addiction; the role of the family; and treatment modalities for addiction. Conducted in a supportive group setting, encouraging entire families to attend together. Completion of this series is often a first step towards conducting a planned family intervention.", "•Chemical Dependency Evaluations and Treatment Referral Services: provides on and off-site professional alcohol and drug related consultation, guidance and custom-tailored treatment referral services for adolescents, adults, and families.", "•Relapse Prevention Services: provides individualized recovery coaching, case management and relapse prevention groups creating a safety-net of aftercare and support services following substance abuse treatment. LICADD’s certified relapse prevention professional staff can help recovering individuals successfully transition from inpatient treatment back home or into a sober living environment.", "•Prevention through Education: provides alcohol and other drug risk education for individual, family, and communities from kindergarten through adulthood. Educational services include adolescent evaluations, elementary and middle school interactive modules, support services for children of addicted parents and parent-child communication workshops.", "•Mentoring Services: LICADD’s BUDDY Mentoring Program delivers a wide range of support services to at-risk children of incarcerated parents helping to break the multi-generational cycle of addiction and incarceration. Adult peer-to-peer mentoring services deliver a full range of transitional services to aid the successful transition and re-entry process for ex-offenders back to the community.", "P3", "In Nassau County: 1025 Old Country Road, Suite 221, Westbury, NY 11590 - (516) 747-2606 - Hours: Mon, Thurs, Fri: 8:30am-5:00pm - Tues & Wed: 8:30am-9:00pm -- Sat: 9:00am-4:00pm - (Walk-ins Welcome)","In Suffolk County: 4400 Veteran's Highway, Suite 204, Holbrook, NY 11741 - - (631) 979-1700  Mon & Thurs : 8:30am-9:00pm; Tues, Wed, Fri: 8:30am-5:00pm; Sat: 9:00am-4:00pm", "877 East Main Street, Suite 107, Riverhead, NY 11901 -- (631) 284-9583, Hours: By Appointment"]
    var LICADDP2TitlesArray = ["", "", "", "", "", "", "", "", "", "", ""]
    
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
        return 11
    }

    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP1", for: indexPath) as! LICADDP1TableViewCell
            cell.LICADDP1TitleLabel.text = "What is it?"
            cell.LICADDP1ContLabel.text = "LICADD’s mission is to address the addictive climate of our times by providing initial attention and referral services to individuals, families, and children, through intervention, education and professional guidance to overcome the ravages of alcohol and other drug-related problems."
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP4", for: indexPath) as! LICADDP4TableViewCell
            cell.LICADDP4TitleLabel.text = "How do they Help?"
            cell.LICADDP4ContLabel.text = "Family, Individual and Workplace Chemical Dependency Interventions: professionally guided educational and motivational processes that help a family or workplace “team”, prepare themselves to approach a loved one in a clear, respectful, and loving way about their drug and/or alcohol use with the immediate goal of encouraging them to accept help. Family members are given the tools to care for themselves and the identified patient, if agreeable to treatment, is given the proper assistance to access competent, affordable treatment-on-demand."
            return cell}
        
        if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP3", for: indexPath) as! LICADDP3TableViewCell
            cell.LICADDP3TitleLabel.text = "Contact information:"
            cell.LICADDP3ContLabel.text = "24 Hour Hotline – (631) 979-1700"
            return cell}
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LICADDP2", for: indexPath) as! LICADDP2TableViewCell
            cell.LICADDP2ContLabel.text = LICADDP2ContArray[indexPath.row]
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
