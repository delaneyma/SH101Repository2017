//
//  MICHCTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/25/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class MICHCTableViewController: UITableViewController {

    var VCName = ""
    var MICHCP2TitlesArray = ["", "How does it work?", "How to make a referral:"]
    var MICHCP2ContArray = ["", "The Suffolk County MICHC embraces strategies and activities that address maternal and infant health behaviors at multiple levels, by addressing women’s health across their life course. As part of the MICHC plan to improve maternal and infant health the following programs and services are offered:•Healthy Baby and Me:  Community Health Workers provide home-visiting peer education and referral services to women of childbearing age residing in the Amityville, Bay Shore, Brentwood, Central Islip, Copiague and Wyandanch Communities.•Baby Talk: Community Health Workers provide home-visits to parenting women to provide one to one education, referrals and advocacy to New Moms. Topics will include: Infant Nutrition, Breast-feeding, Infant Milestones including Developmental Screenings for infants, Referrals to providers of Infant Equipment.• Cribs for Kids: The Suffolk County Cribs for Kids Program is a collaborative effort between the Suffolk County Department of Health - MICHC project and the NYS Sudden Infant and Child Death Resource Center to provide pack n plays to socio-economically deprived families who do not have a safe sleep space for their newborns. Crib recipients must be enrolled in the MICHC program for home visiting peer education to be eligible.•Additionally, educational topics around pregnancy and a directory of local resources is maintained at: HealthyBabyAndMe.org", "Referrals to MICHC come from many sources, including the Hudson River Healthcare clinics, hospitals, public health nurses, social services, schools, and assorted community-based agencies. One important aspect to be aware of is that we have a limited catchment area, so our clients must reside in one of our 6 targeted communities, which are Brentwood, Bay Shore, Central Islip, Wyandanch, Amityville or Copiague.  Referrals can be made by faxing over a completed Referral Form to 631 854-4027, or simply by phone at 631 854-4023. Maternal and Infant Community Health Collaborative; 4 Udall Road West Islip, NY 11795; Phone: (631) 854-4023; Fax: (631) 854-4027"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 300
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MICHCP2TitlesArray.count
    }


    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 && indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MICHCP1", for: indexPath) as! MICHCP1TableViewCell
            cell.MICHCP1TitleLabel.text = "What is it?"
            cell.MICHCP1ContLabel1.text = "The Suffolk County Department of Health Services - Maternal and Infant Community Health Collaborative (MICHC) is a New York State Department of Health grant-funded project designed to improve the health of women ages 12-44 and their families.The Suffolk County MICHC project has chosen to focus on 6 high risk zip codes located in Western Suffolk County: Amityville, 11701, Bay Shore, 11706, Brentwood, 11717, Central Islip, 11722, Copiague, 11726 and Wyandanch, 11798."
            
            cell.MICHCP1ContLabel2.text = "In these areas, the effects of racial, ethnic and economic disparities are evident. To reduce/eliminate these disparities there is a need for improved health care for women and children coupled with community collaborations to raise awareness of Women's Health across their life cycle.Key priority outcomes include reducing:• Preterm Births: births occurring before 37 weeks gestation (of pregnancy)• Low Birth Weight: an infant weighing less than 2,500 grams (5 pounds 8 ounces) at birth• Infant Mortality: an infant death from the time of birth until the day of the infant’s first birthday• Maternal Mortality: death of a woman while pregnant or within 42 days of termination of pregnancy due to complications of the pregnancy."
            return cell}
            
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MICHCP2", for: indexPath) as! MICHCP2TableViewCell
            cell.MICHCP2TitleLabel.text = MICHCP2TitlesArray[indexPath.row]
            cell.MICHCP2ContLabel.text = MICHCP2ContArray[indexPath.row]
            return cell
        }
    }


    
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        
        HeaderView.HeaderCellLabel.text = "Maternal and Infant Community Health Collaborative (MICHC)"
        
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
