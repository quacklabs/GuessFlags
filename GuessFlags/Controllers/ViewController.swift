//
//  ViewController.swift
//  GuessFlags
//
//  Created by Sprinthub on 07/02/2019.
//  Copyright © 2019 Sprinthub Mobile. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class ViewController: UIViewController, MKMapKitDelegate {
    
    @IBOutlet var mapView : MKMapview!

    override func viewDidLoad(){
        super.viewDidLoad()

        mapView.delegate = self

    }


    //get device location and set
    func getLocation(){
        // 2.
       // let deviceLocation = 
        let sourceLocation = CLLocationCoordinate2D(latitude: 40.759011, longitude: -73.984472)
        let destinationLocation = CLLocationCoordinate2D(latitude: 40.748441, longitude: -73.985564)
    }


}

