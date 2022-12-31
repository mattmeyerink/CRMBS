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
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .padding(.bottom, 10)
            
            Spacer()
            
            HStack {
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: "fork.knife")
                        
                        Text("Food")
                    }
                }
                .buttonStyle(FoodButton())
                
                
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: "bag.fill")
                        
                        Text("Shopping")
                    }
                }
                .buttonStyle(ShoppingButton())
            }
            
            HStack {
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: "leaf.fill")
                        
                        Text("Nature")
                    }
                }
                .buttonStyle(NatureButton())
                
                Button(action: dropPin) {
                    VStack {
                        Image(systemName: "popcorn.fill")
                        
                        Text("Entertainment")
                    }
                }
                .buttonStyle(EntertainmentButton())
            }
            
            Spacer()
        }
    }
    
    func dropPin() -> Void {
        print("Dropped a pin")
    }
}
