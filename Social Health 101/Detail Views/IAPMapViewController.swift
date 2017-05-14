//
//  IAPMapViewController.swift
//  Social Health 101
//
//  Created by Marc Delaney on 4/27/17.
//  Copyright © 2017 MDCoderforHealth. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class IAPMapViewController: UIViewController  {

    @IBOutlet weak var IAPMap: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let distancespan: CLLocationDegrees = 30000
                let IAPProntoLoc = CLLocationCoordinate2DMake(40.773155, -73.273024)
        
                IAPMap.setRegion(MKCoordinateRegionMakeWithDistance(IAPProntoLoc, 40.773155, distancespan), animated: true)
        
        let IAPcoordinate = CLLocationCoordinate2D (latitude: 40.773155, longitude: -73.273024)
        let annotation = MKPointAnnotation()
        annotation.coordinate = IAPcoordinate
        annotation.title = "Pronto Clinic"
        annotation.subtitle = "128 Pine Aire Dr, Bay Shore, NY 11706"
        IAPMap.addAnnotation(annotation)
        
//        var IAPAnnotation = MKAnnotation()
//        IAPAnnotation.coordinate = IAPcoordinate
//        IAPAnnotation.title = "IAP Pronto CLinic"}
//    
//    IAPMap.addAnnotation(IAPAnnotation as! MKAnnotation)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
