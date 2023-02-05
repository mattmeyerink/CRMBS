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
            ZStack {
                Map(coordinateRegion: region, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: crumbs) { crmb in
                    MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: crmb.coordinates.latitude, longitude: crmb.coordinates.longitude)) {
                        VStack{
                            CrmbAnnotation(crmb: crmb)
                        }
                    }
                }
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    DismissCrmbButton()
                    
                    Spacer()
                    
                    CrmbActionBar()
                        .padding(.bottom)
                }
            }
        }
    }
}
