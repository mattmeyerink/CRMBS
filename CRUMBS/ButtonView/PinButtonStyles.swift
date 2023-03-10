//
//  PinButtonStyles.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/31/22.
//

import Foundation
import SwiftUI

struct CrmbPinButtonStyle: ButtonStyle {
    var locationType: LocationType
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 40, weight: .bold))
            .padding(.vertical, 15)
            .padding(.horizontal, 20)
            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1))
            .background(locationTypeColors[locationType])
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
