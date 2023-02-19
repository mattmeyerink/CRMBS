//
//  MapViewCoordinator.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/18/23.
//

import Foundation
import MapKit

class MapViewCoordinator: NSObject, MKMapViewDelegate {
    var mapViewController: MapViewV2
    
    init(_ controller: MapViewV2) {
        self.mapViewController = controller
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard let annotation = annotation as? CrmbPin else {
            return nil
        }
        
        let identifier = "crumb"
        var view: MKAnnotationView
        
        if let dequeuedView = mapView.dequeueReusableAnnotationView(
            withIdentifier: identifier) as? CrmbPinAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            view = CrmbPinAnnotationView(
            annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        
        return view
    }
}
