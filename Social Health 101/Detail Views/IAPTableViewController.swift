//
//  IAPTableViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/25/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.


import UIKit
import MapKit
import CoreLocation

class IAPTableViewController: UITableViewController {



    
    var VCName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 300
        
//        let distancespan: CLLocationDegrees = 200
//        let IAPProntoLoc = CLLocationCoordinate2DMake(40.773155, -73.273024)
//        
//        IAPMap.setRegion(MKCoordinateRegionMakeWithDistance(IAPProntoLoc, 40.773155, distancespan), animated: true)
//        
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
        
        if indexPath.section == 0 && indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IAPP1", for: indexPath) as! IAPP1TableViewCell
            cell.IAPP1TitleLabel.text = "What is it?"
            cell.IAPP1ContLabel.text = "The mission of the IAP is to ensure that children in Suffolk County are fully immunized by their second birthday, and that all infants born of hepatitis B positive mothers are appropriately identified, treated and tracked.  To comply with this mission, the Department holds immunization clinics, conducts immunization audits in private provider's offices and nursery/day care centers, conducts educational programs for health care professionals and stakeholder members in the community and responds to immunization questions."

            return cell}
        if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "IAPP3", for: indexPath)as! IAPP3TableViewCell
            return cell
        }
            
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "IAPP2", for: indexPath) as! IAPP2TableViewCell
            cell.IAPP2TitleLabel.text = "When and where are the IAP clinics held?"
            cell.IAPP2ContLabel1.text = "The nearest IAP clinic to Stony Brook University Hospital is the Pronto Clinic in Bayshore: Pronto, 128 Pine Aire Dr,Bay Shore, NY 11706"
            cell.IAPP2ContLabel2.text = "A calendar of clinic dates can be found here:http://www.suffolkcountyny.gov/Departments/HealthServices/PatientCare/ImmunizationActionProgram.aspx"
            return cell}
    }


    //Mark: Make the Headers from the XIB File:
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let HeaderView = Bundle.main.loadNibNamed("THeaderCellFile", owner: self, options: nil)?.first as! THeaderCellFile
        HeaderView.HeaderLabel.text = "Immunization Action Program (IAP)"
        return HeaderView
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

    
    

}
