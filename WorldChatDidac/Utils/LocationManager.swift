//
//  LocationManager.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 23/4/21.
//

import Foundation
import MapKit
import CoreLocation

class LocationManager: NSObject {

    private let locationManager = CLLocationManager()
    var location: CLLocation? = nil

    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {

}
