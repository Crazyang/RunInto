//
//  LocationManager.swift
//  RunInto
//
//  Created by YongYang on 09/11/2016.
//  Copyright © 2016 YongYang. All rights reserved.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate {
    var locationMangerObj :CLLocationManager;
    
    override init(){
        locationMangerObj = CLLocationManager.init();
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        for locationPara in locations{
            print("LocationManager ********** Location >>>>>>\n")
            print("LocationManager ********** Location is in \(locationPara.coordinate.latitude) \(locationPara.coordinate.longitude)")
            print("LocationManager ********** Location >>>>>>\n")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error){
        print("didFailWithError ====\(error)")
    }

    func getAuthor(){
        locationMangerObj.requestAlwaysAuthorization();
        locationMangerObj.delegate = self;
    }
    
    func checkLocation(){
        switch (CLLocationManager.authorizationStatus()){
        case .authorizedAlways:
            locationMangerObj.requestLocation();
            break;
        default:
                locationMangerObj.requestAlwaysAuthorization();
        }
    }
    

}
