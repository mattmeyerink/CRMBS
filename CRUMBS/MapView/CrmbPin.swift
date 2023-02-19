//
//  CrmbPin.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/18/23.
//

import Foundation
import CoreLocation
import MapKit

class CrmbPin: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var subtitle: String?
    
    init(title: String, coordinate: Coordinates, subtitle: String) {
        self.title = title
        self.coordinate = CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
        self.subtitle = subtitle
    }
}
