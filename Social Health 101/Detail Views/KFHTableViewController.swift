//
//  KFHTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/23/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class KFHTableViewController: UITableViewController {

    var VCName = ""
    
    
    
    
      // reusable as: index: 1, 2, 3, 5, 7, 9
    var KFHP2TitlesArray = ["P1", "Newborn care:", "Well child/adolescent care:", "Management of chronic diseases:", "4(p1)", "Depending on what each family needs, the community health worker can:", "6P1", "Eligibility critera:", "8P1", "Referral information:", "10P3"]
    
    var KFHP2ContArray = ["P1", "Involves frequent visits during the first two months when many parents often request support", "Includes topics such as immunizations, developing healthy habits, preventing disease, navigating the health care system, and building an effective relationship with the pediatrician", "Includes assistance with understanding how to use recommended medicines, when to call the doctor, and manage the many ongoing appointments that children with chronic diseases often need. Includes diseases such as asthma, diabetes or obesity.", "4(p1)", "• Answer questions about vaccinations and well-visit (“check-up”) schedules • Assist in coordinating multiple appointments or set up a schedule of visits • Help make follow-up appointments with the doctor • Check-in by phone • Follow up after a doctor visit to make sure families have what they need • Connect families with resources in the Stony Brook University Medical Center system or in the community • Provide reliable health and wellness information • Help with any additional questions.", "6P1", "• Age 0-17 years • Considered “At Risk” by pediatrician/specialist • Must be following with at least one Stony Brook doctor • Newborn parents • Children with chronic medical conditions (asthma, diabetes, obesity, etc) • Complex medical conditions that require intensive healthcare navigation (i.e. multiple specialists) • History of poor adherence to medical recommendations • Families in need of additional social support and connections to local resources", "8P1", "1) Patient name, MRN, and contact information, 2) Clinicians involved in care, 3) Reason for referral, 4) Expectations of KFH support", "10P3"]
    
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
        return 11
    }

  // reusable as: index: 1, 2, 3, 5, 7, 9
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.row == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "KFHP1", for: indexPath)as! KFHProto1TableViewCell
        cell.KFHP1TitleLabel.text = "What is it?"
        cell.KFHP1ContLabel.text = "Keeping Families Healthy (KFH) is a free service created with the primary care pediatricians at Stony Brook Children’s which provides home visits by a community health worker centered primarily around three areas of child health and wellness:"
            return cell}
       
        if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "KFHP1", for: indexPath)as! KFHProto1TableViewCell
            cell.KFHP1TitleLabel.text = "What support can families expect?"
            cell.KFHP1ContLabel.text = "Because the program is an outreach service, participation in KFH starts with a call from a community health worker who also works with the family’s pediatrician’s office. At the first meeting, the community health worker and family together complete a basic health-screening tool and parents ask any questions they may have about their child’s health."
            
            return cell}

        
        if indexPath.row == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "KFHP1", for: indexPath)as! KFHProto1TableViewCell

            cell.KFHP1TitleLabel.text = "Who is eligible?"
            cell.KFHP1ContLabel.text = "The KFP program supervisor will assist families in determining eligibility based on the following critera."
            
            return cell}
        
        if indexPath.row == 8{
            let cell = tableView.dequeueReusableCell(withIdentifier: "KFHP1", for: indexPath)as! KFHProto1TableViewCell

            cell.KFHP1TitleLabel.text = "How can my patient get enrolled?"
            cell.KFHP1ContLabel.text = "To refer a patient, identify “at risk” patients and introduce the program to the parents during an appointment. After discussion and if the familiy wishes to enroll, send the referral informaiton (below) to the KFH program contact (see contact info). "
            
            return cell}
        
        if indexPath.row == 10{
            let cell = tableView.dequeueReusableCell(withIdentifier: "KFHP3", for: indexPath)as! KFHProto3TableViewCell
            cell.KFHP3TitleLabel.text = "Contact information:"
            cell.KFHP3ContLabel.text = "KFH Prog Contact: Giuseppina Caravella, Office Ph: (631)444-7307, Fax: (631)444-7865; Email: giuseppina.caravella@stonybrookmedicine.edu; EMR: Giuseppina Caravella; P2 Amb Clerk"
            
            return cell}
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "KFHP2", for: indexPath)as! KFHProto2TableViewCell
            
            cell.KFHP2TitleLabel.text = KFHP2TitlesArray[indexPath.row]
            cell.KFHP2ContLabel.text = KFHP2ContArray[indexPath.row]
            
            return cell}

        
        
    }
    

    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("KFHTitleTableViewCell", owner: self, options: nil)?.first as! KFHTitleTableViewCell
        
        HeaderView.KFHTitleLabel.text = "Keeping Families Healthy"
        
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    

}
