//
//  DismissCrmbButton.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/5/23.
//

import SwiftUI

struct DismissButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(15)
            .background(Color.black)
            .clipShape(Circle())
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct DismissCrmbButton: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button (action: dismissCrumb) {
                VStack {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .semibold))
                }
            }
            .buttonStyle(DismissButtonStyle())
        }
        .padding(.top, 75)
        .padding(.trailing, 15)
    }
    
    func dismissCrumb() {
        
    }
}
