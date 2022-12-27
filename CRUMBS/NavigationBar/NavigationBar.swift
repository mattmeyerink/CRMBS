//
//  NavigationBar.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/26/22.
//

import SwiftUI

struct NavigationBar: View {
    @State var navigateToView: (Views) -> Void
    
    var body: some View {
        VStack {
            ZStack {
                Color(red: 0, green: 0.75, blue: 1)
                
                HStack {
                    Button(action: { navigateToView(.buttonView) }) {
                        VStack {
                            Image(systemName: "button.programmable")
                            
                            Text("Buttons")
                        }
                        .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: { navigateToView(.mapView) }) {
                        VStack {
                            Image(systemName: "globe.americas.fill")
                            
                            Text("Map")
                        }
                        .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: { navigateToView(.listView) }) {
                        VStack {
                            Image(systemName: "list.bullet.rectangle")
                            
                            Text("List")
                        }
                        .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: { navigateToView(.statView) }) {
                        VStack {
                            Image(systemName: "chart.pie.fill")
                            
                            Text("Stats")
                        }
                        .foregroundColor(.black)
                    }
                }
                .padding(.horizontal, 30)
            }
                .edgesIgnoringSafeArea(.all)
            
        }
            .frame(height: 60)
    }
}
