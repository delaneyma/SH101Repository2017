//
//  IAPP2TableViewCell.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/25/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class IAPP2TableViewCell: UITableViewCell, MKMapViewDelegate {
    @IBOutlet weak var IAPP2TitleLabel: UILabel!
    @IBOutlet weak var IAPP2ContLabel1: UILabel!
    @IBOutlet weak var IAPP2ContLabel2: UILabel!

    
    
    var location: CLLocation?

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        
    }
    
//    
//    //MapView
//    mapView!.showsPointsOfInterest = true
//    if let mapView = self.mapView
//        {
//            mapView.delegate = self
//    }
//    
//    
//    let orgLocation = CLLocationCoordinate2DMake(location!.coordinate.latitude, location!.coordinate.longitude)
//    
//    let dropPin = MKPointAnnotation()
//    dropPin.coordinate = orgLocation
//    mapView!.addAnnotation(dropPin)
//    
//    self.mapView?.setRegion(MKCoordinateRegionMakeWithDistance(orgLocation, 500, 500), animated: true)
    
//
//    MKMapView.setRegion(40.773155, -73.273024)
//    let location = CLLocationCoordinate2DMake(40.773155, -73.273024)
//    
//    MKCoordinateSpanMake(0.02, 0.02)
//    
//    
//    let annotation = MKPointAnnotation()
//    annotation.coordinate = location
//    annotation.title = "Pizza Pistorante"
//    annotation.subtitle = "Luna Rossa"
//    
    

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
