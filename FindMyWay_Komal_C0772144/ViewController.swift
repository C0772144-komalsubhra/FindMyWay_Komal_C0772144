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
      
    
}

