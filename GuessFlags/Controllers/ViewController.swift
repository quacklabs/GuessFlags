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

    //Input Fields
    @IBOutlet var startDestinationField : UITextField!
    @IBOutlet var endDestinationField : UITextField!


    private var LocationData = [Location]()
    private var locationHandler = LocationHandler()

    override func viewDidLoad(){
        super.viewDidLoad()

        mapView.delegate = self
        locationHandler.delegate = self
    }


   

}

extension ViewController : LocationHandlerDelegate{
    //get device location and set
    func getLocation(){
       
    }
}

 

