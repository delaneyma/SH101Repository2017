//
//  AMHWTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/28/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class AMHWTableViewController: UITableViewController {

    var VCName = ""
    
    var AMHWP3TitlesArray =  ["", "", "Mental Health Helpline:", "Support Groups:", "Community Education", "Advocacy", ""]
    var AMHWP3ContArray = ["", "", "rained staff and volunteers are available between 8:30 am and 4:30 pm, Monday through Friday to assist callers in locating services and resources in their community. All calls are confidential. They also offer open access to individuals who would like meet a mental health professional for a face-to-face meeting to discuss personal needs or those of a loved one to begin the process of obtaining treatment.", "The MHAW sponsors free Support Groups around the following topics: Mood Disorder, Relatives and Friends of Persons with Mental Illness, and Anxiety and Panic Disorder.", "The MHAW offers educational programs to the public, professionals, consumers of mental health services and their families. Educational programs include topics on mental illness, mental wellness in the workplace, stigma reduction and intervention and treatment strategies.", "The MHAW advocates for improved mental health services to the many residents of Suffolk County. The professional staff is also available to assist individuals, their families and groups in advocating for improved services for persons with mental illness. The MHAW works closely with other mental health agencies throughout Suffolk County to assure that quality mental health services are delivered in our communities.", ""]
    
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
        return 8
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AMHWP1", for: indexPath) as! AMHWP1TableViewCell
            cell.AMHWP1TitleLabel.text = "What is it?"
            cell.AMHWP1ContLabel.text = "Formally called the Mental Health Association in Suffolk County, the Association for Mental Health and Wellness (AMHW) is a not-for-profit 501(c)(3) organization dedicated to promoting mental wellness by means of support services, education and advocacy."
            return cell
        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AMHWP2", for: indexPath)as! AMHWP2TableViewCell
            cell.AMHWP2TitleLabel.text = "What services do they provide?"
            
            return cell
        }
        if indexPath.row == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AMHWP1", for: indexPath) as! AMHWP1TableViewCell
            cell.AMHWP1TitleLabel.text = "How to contact:"
            cell.AMHWP1ContLabel.text = "Phone: 631-226-3900; Fax: 631-738-0427; Attn: Alexis Rodgers, LMSW - Email:arodgers@mhaw.org; - Address: 939 Johnson Ave., Ronkonkoma, NY 11779"
            return cell
        }
           
        if indexPath.row == 7{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AMHWP4", for: indexPath) as! AMHWP4TableViewCell
            return cell }
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AMHWP3", for: indexPath)as! AMHWP3TableViewCell
            cell.AMHWP3TitleLabel.text = AMHWP3TitlesArray[indexPath.row]
            cell.AMHWP3ContLabel.text = AMHWP3ContArray[indexPath.row]
            return cell
        }
        
    }
    

    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Association for Mental Health and Wellness"
        return HeaderView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    

    
   
    
    

}
