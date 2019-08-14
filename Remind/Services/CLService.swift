//
//  CLService.swift
//  Remind
//
//  Created by James Volmert on 8/13/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import Foundation
import CoreLocation

class CLService: NSObject{
    private override init() { }
    static let shared = CLService()
    let locationManager = CLLocationManager()
    var shouldSetRegion = true
    
    func authorize() {
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
    }
    
    func updateLocation() {
        shouldSetRegion = true
        locationManager.startUpdatingLocation()
    }
    
}

extension CLService: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let currentLocation = locations.first else { return }
        shouldSetRegion = false
        
        let region = CLCircularRegion(center: currentLocation.coordinate, radius: 20, identifier: "start position")
        manager.startMonitoring(for: region)
    }
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("did enter region")
        NotificationCenter.default.post(name: NSNotification.Name("internalName.notification"), object: nil)
    }
}
