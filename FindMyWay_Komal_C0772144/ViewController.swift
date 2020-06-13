//
//  ViewController.swift
//  FindMyWay_Komal_C0772144
//
//  Created by user175427 on 6/11/20.
//  Copyright © 2020 user175427. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var btnZoomIn: UIButton!
    @IBOutlet weak var btnZoomOut: UIButton!
    @IBOutlet weak var btnFindMyWay: UIButton!
    
    @IBOutlet weak var segmentType: UISegmentedControl!
    var locationManager = CLLocationManager()
    var aLat: CLLocationDegrees??
    var aLon: CLLocationDegrees??
    var location: CLLocation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         mapView.delegate = self
        locationManager.delegate = self
       
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
        mapView.isZoomEnabled = false   
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        tap.numberOfTapsRequired = 2
        mapView.addGestureRecognizer(tap)
    }
      func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
        {
            
            location = locations.first!
            let coordinateRegion = MKCoordinateRegion(center: location!.coordinate, latitudinalMeters: 1000, longitudinalMeters:1000)
            mapView.setRegion(coordinateRegion, animated: true)
            locationManager.stopUpdatingLocation()
        }
