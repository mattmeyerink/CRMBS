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
                        Image(systemName: "fork.knife")
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(FoodButton())
                .padding(.trailing, 25)
                
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: "bag.fill")
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(ShoppingButton())
            }
            .padding(.bottom, 25)
            
            HStack {
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: "leaf.fill")
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(NatureButton())
                .padding(.trailing, 25)
                
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: "popcorn.fill")
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(EntertainmentButton())
            }
            .padding(.bottom, 25)
            
            HStack {
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: "building.columns.fill")
                    }
                    .frame(width: 75, height: 75)
                }
                .buttonStyle(LandmarkButton())
            }
            
            Spacer()
        }
    }
    
    func dropPin() -> Void {
        print("Dropped a pin")
    }
}
