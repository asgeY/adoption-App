//
//  ViewController.swift
//  Maps
//
//  Created by Taylor Frost on 7/9/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapsMapView: MKMapView!
    
    var locationManager: CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if(CLLocationManager.locationServicesEnabled()){
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
//            locationManager.requestWhenInUseAuthorization()
        }
        
    }
    
    func locationManger(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        
        let location = locations.last as! CLLocation
        
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        self.mapsMapView.setRegion(region, animated: true)
        
        
    }
        
        
//        let location = CLLocationCoordinate2D(
//            
//        latitude: 51.50007773,
//        longitude: -0.1246402
//      )
//        let span = MKCoordinateSpanMake(0.05, 0.05)
//        
//        let region = MKCoordinateRegion(center: location, span: span)
//        
//        mapsMapView.setRegion(region, animated: true)
//        
//        let annotation = MKPointAnnotation()
//        
//        annotation.coordinate = location
//        
//        annotation.title = "Big Ben"
//        
//        annotation.subtitle = "London"
//        
//        mapsMapView.addAnnotation(annotation)
//        
//
//
    }
    


