//
//  MapAnnotationStyles.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/4/23.
//

import Foundation
import SwiftUI

struct CrmbAnnotationStyle: ButtonStyle {
    var locationType: LocationType
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 15, weight: .bold))
            .padding(20)
            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1))
            .background(locationTypeColors[locationType])
            .clipShape(Circle())
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
