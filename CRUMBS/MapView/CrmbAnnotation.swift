//
//  CrmbAnnotation.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/4/23.
//

import SwiftUI
import MapKit



struct CrmbAnnotation: View {
    @State var crmb: Crumb
    
    var body: some View {
        Button(action: openCrmb) {
            VStack {
                Image(systemName: locationTypeIconNames[crmb.type]!)
            }
            .frame(width: 10, height: 10)
        }
            .buttonStyle(CrmbAnnotationStyle(locationType: crmb.type))
    }
    
    func openCrmb() -> Void {
        // Zoom in on the selected crmb.
        // Potentially make the selected crmb much smaller
        // Display an action bar (Edit/Delete/Share)
    }
}
