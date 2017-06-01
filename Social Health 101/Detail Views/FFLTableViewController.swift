//
//  FFLTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/27/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class FFLTableViewController: UITableViewController {

    var VCName = ""
    
    var FFLTitlesArray = ["What is it?", "Contact information:"]
    var FFLContArray = ["A program of Stony Brook Children’s Hospital, the Center’s primary mission is to help children and adolescents ages five to 18 to achieve safe weight loss and successfully maintain a healthy weight lifelong via positive, family friendly, evidence-based, individualized approaches delivered by a multidisciplinary team.  The Center is directed by Dr. Rosa Cataldo DO. Fit Families for Life (FFFL) is a multi-disciplinary nutrition, exercise and behavior modification program that is offered to children and families of those children who are at risk for cardiovascular disease. The program is offered to children and families who are facing at least one of the following health risk factors: a) overweight or obesity, b) high cholesterol, c) hypertension (high blood pressure), or d) type 2 diabetes / metabolic syndrome. The program is directed by Peter Morelli, MD of Columbia University and Sharon Martino, PT, PhD, of Stony Brook University.", "Stony Brook Children's Healthy Weight and Wellness Center: (631) 444-KIDS (5437). Fit Families for Life: (631)-265-3300 or 631-444-3256"]
    
    
    
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
        
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FFLP1", for: indexPath) as! FFLP1TableViewCell
        cell.FFLP1TitleLabel.text = FFLTitlesArray[indexPath.row]
        cell.FFLP1ContLabel.text = FFLContArray[indexPath.row]
            return cell}
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FFLP2", for: indexPath) as! FFLP2TableViewCell
    
            return cell}
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FFLP3", for: indexPath) as! FFLP3TableViewCell
         
            return cell}        
    }
   
    
    
    
    //MarK: Make the headers:
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("LargeHeaderCellFile", owner: self, options: nil)?.first as! LargeHeaderCellFile
        HeaderView.HeaderCellLabel.text = "Fit Families for Life: The Healthy Weight and Wellness Center"
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
