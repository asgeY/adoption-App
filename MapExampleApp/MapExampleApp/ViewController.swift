//
//  ViewController.swift
//  MapExampleApp
//
//  Created by Taylor Frost on 7/11/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate  {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude = (40.732895 + 40.730459) / 2
        
        let longitude = (-111.383897 + -111.551152) / 2
        
        self.addCustomPin()
        self.addCustomPin2()
        
        let location = CLLocationCoordinate2D(
        
            latitude: latitude,
            longitude: longitude
        
        )
        
        self.centerMap(location)
   
    }
    
    func addCustomPin2() {
        
        let location = CLLocationCoordinate2D(
        
        latitude: 40.730459,
        longitude: -111.551152
        )
        
        let customAnnotation = CustomMKPointAnnotation()
        
        customAnnotation.coordinate = location
        customAnnotation.title = "Best Place On Earth"
        customAnnotation.subtitle = "Oh Yeah"
        
        self.mapView.addAnnotation(customAnnotation)
    }
    
    func addCustomPin() {
        
        let location = CLLocationCoordinate2D(
        
        latitude: 40.732895,
        longitude: -111.383897

        )
        
        let customAnnotation = CustomMKPointAnnotation()
        
        customAnnotation.coordinate = location
        customAnnotation.title = "My Cool Place"
        customAnnotation.subtitle = "Pokemon Go Rocks"
        
        self.mapView.addAnnotation(customAnnotation)
    }
    
    func addPin(latitude: Double, longitude: Double, titleString: String, subtitleString: String) {
        let location = CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
            
        )
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = titleString
        annotation.subtitle = subtitleString
        
        self.mapView.addAnnotation(annotation)
        
        
    }
    
    func centerMap(centerCoordinate: CLLocationCoordinate2D) {
        
        
        //1. Create an CoordinateSpan
        
        let span = MKCoordinateSpan(
            latitudeDelta: 0.5,
            longitudeDelta: 0.5
        )
        
        //2. Create the Region
        
        let region = MKCoordinateRegion(
        center: centerCoordinate,
        span: span
        
        )
        
        mapView.setRegion(region, animated: true)
        
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation.isKindOfClass(CustomMKPointAnnotation) {
            
            print("Got a custom MKPointAnnotation")
            
            //1. Create identifier
            
            let identifier = "MapPin"
            
            let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            
            annotationView.canShowCallout = true
            
            let imageView = UIImageView(frame: CGRectMake(0, 0, 44, 44))
            
            imageView.image = UIImage(named: "map")
            
            // Add the image to the annotationView image
            
            annotationView.image = imageView.image
            
            return annotationView
        }
        
        return nil
    }
    
    
}

