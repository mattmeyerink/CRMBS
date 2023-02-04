//
//  ButtonView.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/26/22.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            Text("CRMBS")
                .font(.system(size: 40, weight: .semibold))
                .foregroundColor(.white)
            
            Spacer()
            
            HStack {
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: locationTypeIconNames[.FOOD]!)
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(CrmbPinButtonStyle(locationType: .FOOD))
                .padding(.trailing, 25)
                
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: locationTypeIconNames[.SHOPPING]!)
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(CrmbPinButtonStyle(locationType: .SHOPPING))
            }
            .padding(.bottom, 25)
            
            HStack {
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: locationTypeIconNames[.NATURE]!)
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(CrmbPinButtonStyle(locationType: .NATURE))
                .padding(.trailing, 25)
                
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: locationTypeIconNames[.ENTERTAINMENT]!)
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(CrmbPinButtonStyle(locationType: .ENTERTAINMENT))
            }
            .padding(.bottom, 25)
            
            HStack {
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: locationTypeIconNames[.LANDMARK]!)
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(CrmbPinButtonStyle(locationType: .LANDMARK))
            }
            
            Spacer()
        }
    }
    
    func dropPin() -> Void {
        print("Dropped a pin")
    }
}
