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
    @State var focusedCrmb: Crumb?
    
    @State var centerRegion: MKCoordinateRegion = MKCoordinateRegion.annArborRegion()
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $centerRegion, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: crumbs) { crmb in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: crmb.coordinates.latitude, longitude: crmb.coordinates.longitude)) {
                    VStack{
                        CrmbAnnotation(focusedCrmb: $focusedCrmb, crmb: crmb)
                    }
                }
            }.onAppear {
                if (locationManager.location != nil) {
                    let centerLocationLatitude = locationManager.location?.coordinate.latitude
                    let centerLocationLongitude = locationManager.location?.coordinate.longitude
                    let centerLocation = CLLocationCoordinate2D(latitude: centerLocationLatitude!, longitude: centerLocationLongitude!)
                    centerRegion = MKCoordinateRegion(center: centerLocation, latitudinalMeters: 500, longitudinalMeters: 500)
                }
            }
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
        var locationCenter = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        centerRegion = MKCoordinateRegion(center: locationCenter, latitudinalMeters: 250, longitudinalMeters: 250)
    }
}
