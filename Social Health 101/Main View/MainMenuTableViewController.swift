//
//  MainMenuTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/17/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit
//import ResearchKit


class MainMenuTableViewController: UITableViewController {

    
    
    var MainTitleArray = ["Children and Pregnant Women", "Mental Health and Addiction", "Hunger and Food Insecurity", "Legal Aid", "Housing, Heat, and Emergency Assistance", "New Immigrants, Refugees, and the Underserved", "The Uninsured and the Underinsured"]
//    var MainTitleArray = [["Children and Pregnant Women", "Mental Health and Addiction", "Hunger and Food Insecurity", "Legal Aid", "Housing, Heat, and Emergency Assistance", "New Immigrants, Refugees, and the Underserved", "The Uninsured and the Underinsured"], ["Primers and the Private Sector", "Federal Programs", "Social Securty"]]
    
    var SubTitleArray = ["Resources for the most vulnerable in the family", "The programs to help those who need it", "When every night is a worry about food on the table", "Exercise your rights or lose them", "Health follows you into the home", "Your patient needs help - can they sign up worry-free?", "What to do when your options are limited"]
//    var SubTitleArray = [["Resources for the most vulnerable in the family", "The programs to help those who need it", "When every night is a worry about food on the table", "How to defend yourself in a complicated system", "Health follows you into the home", "Your patient needs help - can they sign up worry-free?", "What to do when your options are limited"], ["What you need to know","Medicare Medicaid - What are they?","Disability and Insurance"]]
    
//    var MainHeadersArray = ["Social Programs 101", "US Insurance and Disability 101"]
    
    var numberoflaunches :Int! = 0
    
    func LoadNumberOfLaunches()
        {let defaults = UserDefaults.standard
        numberoflaunches = defaults.integer(forKey: "Launches")}
    
    func SaveNumberOfLaunches(){
        numberoflaunches = numberoflaunches + 1
        let defaults = UserDefaults.standard
        defaults.set(numberoflaunches, forKey: "Launches")}
    
    
    func ShowReviewPrompt() {
        if (numberoflaunches == 10 || numberoflaunches == 20 || numberoflaunches == 30){
            let alert = UIAlertController(title: "Please Take Our Survey!", message: "Thanks for using SH101! As a frequent user, please participate in our research survey (about 5 questions - less than 2 minutes). ", preferredStyle: UIAlertControllerStyle.alert)
            
            // add the actions (buttons) - IF you click "Survey -- then do these:
            alert.addAction(UIAlertAction(title: "Survey", style: UIAlertActionStyle.default, handler: { action in
                if let url = NSURL(string: "https://www.surveymonkey.com/r/VVDV997") {
                    UIApplication.shared.open(url as URL, options: [:])}
                // Click "Survey" tp go to the Research VC:
//                    self.performSegue(withIdentifier: "ResearchSegue", sender: self);
                    }))
            
            // OR let them click "cancel" and get rid of the alert.
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))

            self.present(alert, animated: true, completion:nil)
        }}
    
    
    
    
    //MARK: Exec the Autotable sizing and count view loads/show survey alert if high enough counts.
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 90
        
        LoadNumberOfLaunches()
        SaveNumberOfLaunches()
        ShowReviewPrompt()
   
}
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
//         return MainTitleArray.count
    return 2}

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return MainTitleArray[section].count
        if section == 0 { return 2}
        else{
            return MainTitleArray.count}
            }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 && indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainTitleCell", for: indexPath) as! MainTitleTableViewCell
            return cell}
        if indexPath.section == 0 && indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainCellP1", for: indexPath) as! MainCellP1TableViewCell
            cell.MainCellP1Label.text = "Learn More About This App"
            return cell}


        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainTableViewCell
            
            cell.MainTitles.text = MainTitleArray[indexPath.row]
            
            cell.MainSubtitles.text = SubTitleArray[indexPath.row]
            //            cell.MainSubtitles.text = SubTitleArray[indexPath.section][indexPath.row]
            
            return cell}
        }
    
    
    
    
    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            let header = Bundle.main.loadNibNamed("HeaderCellFile", owner: self, options: nil)?.first as! HeaderCellFile
            
            
            header.HeaderLabel.text = "Welcome!"
            
            return header}
   
        if section == 1 {
            
            let header = Bundle.main.loadNibNamed("HeaderCellFile", owner: self, options: nil)?.first as! HeaderCellFile
            
            
            header.HeaderLabel.text = "Social Programs 101"
            
            return header}
        return nil
        }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30
    }

    
    
    
//MARK: Navigation Set-up
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CPWSegue" {
            let destVC = segue.destination as! CPWTableViewController
            destVC.VCName = "CPW"}
        if segue.identifier == "MHASegue" {
            let destVC = segue.destination as! MHA1TableViewController
            destVC.VCName = "MHA"}
        if segue.identifier == "HFISegue" {
            let destVC = segue.destination as! HFITableViewController
            destVC.VCName = "HFI"}
        if segue.identifier == "LASegue" {
            let destVC = segue.destination as! LATableViewController
            destVC.VCName = "LA"}
        if segue.identifier == "HHEASegue" {
            let destVC = segue.destination as! HHEATableViewController
            destVC.VCName = "HHEA"}
        if segue.identifier == "NIRUSegue" {
            let destVC = segue.destination as! NIRUTableViewController
            destVC.VCName = "NIRU"}
        if segue.identifier == "UUSegue" {
            let destVC = segue.destination as! UUTableViewController
            destVC.VCName = "UU"}
        
//        //Research Segue
//        if segue.identifier == "ResearchSegue" {
//            let destVC = segue.destination as! ResearchViewController
////            destVC.VCName = "Research"
//        }
//        
        //About Me Segue
        if segue.identifier == "AboutSegue" {
            let destVC = segue.destination as! AboutTableViewController
            destVC.VCName = "About"}
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section, indexPath.row)
        //About me section segue
        if (indexPath.section == 0) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "AboutSegue", sender: indexPath);
        }
        // segue for the subMenus
        if (indexPath.section == 1) && (indexPath.row == 0) {
            self.performSegue(withIdentifier: "CPWSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 1) {
            self.performSegue(withIdentifier: "MHASegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 2) {
            self.performSegue(withIdentifier: "HFISegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 3) {
            self.performSegue(withIdentifier: "LASegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 4) {
            self.performSegue(withIdentifier: "HHEASegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 5) {
            self.performSegue(withIdentifier: "NIRUSegue", sender: indexPath);
        }
        if (indexPath.section == 1) && (indexPath.row == 6) {
            self.performSegue(withIdentifier: "UUSegue", sender: indexPath);
        }
        
        }
    

    
    

}
