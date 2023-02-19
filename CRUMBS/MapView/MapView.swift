//
//  MapView.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/26/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var locationManager: LocationManager
    
    @State var crumbs: [Crumb]
    @State var focusedCrmb: Crumb?
    
    @State var centerRegion: MKCoordinateRegion = MKCoordinateRegion.annArborRegion()
    
    var body: some View {
        ZStack {
            MapViewV2(crumbs: [])
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                DismissCrmbButton(focusedCrmb: $focusedCrmb)
                
                Spacer()
                
                CrmbActionBar(focusedCrmb: $focusedCrmb)
                    .padding(.bottom)
            }
        }
    }
    
    func updateRegion(location: Coordinates) {
        let locationCenter = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        centerRegion = MKCoordinateRegion(center: locationCenter, latitudinalMeters: 250, longitudinalMeters: 250)
    }
}
