//
//  MapView.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/26/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var locationManager = LocationManager()
    @State var crumbs: [Crumb]

    var region: Binding<MKCoordinateRegion>? {
        guard let location = locationManager.location else {
            return MKCoordinateRegion.annArborRegion().getBinding()
        }
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        
        return region.getBinding()
    }
    
    var body: some View {
        if let region = region {
            Map(coordinateRegion: region, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: crumbs) {
                MapMarker(coordinate: CLLocationCoordinate2D(latitude: $0.coordinates.latitude, longitude: $0.coordinates.longitude))
            }
                .edgesIgnoringSafeArea(.top)
        }
    }
}
