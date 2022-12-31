//
//  PinButtonStyles.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/31/22.
//

import Foundation
import SwiftUI

struct FoodButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 25, weight: .bold))
            .padding(.vertical, 15)
            .padding(.horizontal, 20)
            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1))
            .background(Color.orange)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct NatureButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 25, weight: .bold))
            .padding(.vertical, 15)
            .padding(.horizontal, 20)
            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1))
            .background(Color.mint)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ShoppingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 25, weight: .bold))
            .padding(.vertical, 15)
            .padding(.horizontal, 20)
            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1))
            .background(Color.cyan)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct EntertainmentButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 25, weight: .bold))
            .padding(.vertical, 15)
            .padding(.horizontal, 20)
            .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1))
            .background(Color.red)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
