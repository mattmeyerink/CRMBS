//
//  MapViewV2.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/18/23.
//

import SwiftUI
import MapKit
import UIKit

struct MapViewV2: UIViewRepresentable {
    var crumbs: [Crumb]
    
    func makeUIView(context: UIViewRepresentableContext<MapViewV2>) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapViewV2>) {
        view.delegate = context.coordinator
        view.addAnnotations(generateCrmbPins(crumbs: crumbs))
    }
    
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator(self)
    }
}

func generateCrmbPins(crumbs: [Crumb]) -> [CrmbPin] {
    var crumbPins: [CrmbPin] = []
    
    for crumb in crumbs {
        var crumbPin = CrmbPin(
            title: crumb.name,
            coordinate: crumb.coordinates,
            subtitle: crumb.notes
        )
        crumbPins.append(crumbPin)
    }
    
    return crumbPins
}
