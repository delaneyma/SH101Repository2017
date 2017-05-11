//
//  AboutTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 5/8/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit

class AboutTableViewController: UITableViewController {

    var VCName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutP1", for: indexPath) as! AboutP1TableViewCell
           cell.AboutP1Label.text = "Learn More About This App"
            return cell}

        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AboutP2", for: indexPath) as! AboutP2TableViewCell
            cell.AboutP2Label1.text = "What is 'Social Health 101'?"
            cell.AboutP2Label2.text = "SH101 is a mobile reference tool designed to help bridge the gap..."
            return cell}
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AboutP3", for: indexPath) as! AboutP3TableViewCell
            cell.AboutP3Label.text = "How do I use this app?"
            return cell}
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AboutP4", for: indexPath)as! AboutP4TableViewCell
            cell.AboutP4TitleLabel.text = "1. Choose a Category:"
            cell.AboutP4Image.image = UIImage(named: "MainView")
            cell.AboutP4Label.text = "First, use the main menu to select the category of assistance your patient may need or that you'd like to learn more about. The topics covered here span from legal aid to assistance with food insecurity, and more!"
            return cell}
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AboutP4", for: indexPath) as! AboutP4TableViewCell
            cell.AboutP4TitleLabel.text = "2. Pick a Program:"
            cell.AboutP4Image.image = UIImage(named: "SubView")
            cell.AboutP4Label.text = "Next, navigate the SubMenus to see the different programs covered under the selected category. Tap any program title to see more information. You may be surprised at what is available, so explore!  "
            return cell}
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AboutP4", for: indexPath) as! AboutP4TableViewCell
            cell.AboutP4TitleLabel.text = "3. Reference and Learn:"
            cell.AboutP4Image.image = UIImage(named: "DetailView")
            cell.AboutP4Label.text = "Finally, browse the detail pages about each program for concise program summaries, eligibility criteria, phone numbers, addresses, and useful links to program websites. You can use these pages to reference spcific informaiton or even learn about a program previously unknown to you."
            return cell}

        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AboutP5", for: indexPath) as! AboutP5TableViewCell
            cell.AboutP5TitleLabel.text = "Contact information:"
            cell.AboutP5ContLabel.text = "This app is run and maintained by the Social Justice in Medicine interest group at the Stony Brook School of Medicine. We are committed to making this app a useful tool to the medical community and we welcome your comments, questions and suggestions. email:socialjusticeinmedicineSB@gmail.com "
            return cell}
    }
   

    
    
}
