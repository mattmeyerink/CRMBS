//
//  CrmbPinAnnotationView.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/18/23.
//

import MapKit

class CrmbPinAnnotationView: MKMarkerAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            self.displayPriority = .required
        }
    }
}
