//
//  NavigationBar.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/26/22.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        VStack {
            ZStack {
                Color(red: 0, green: 0.75, blue: 1)
                
                HStack {
                    VStack {
                        Image(systemName: "button.programmable")
                        
                        Text("Buttons")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "globe.americas.fill")
                        
                        Text("Map")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "list.bullet.rectangle")
                        
                        Text("List")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "chart.pie.fill")
                        
                        Text("Stats")
                    }
                }
                .padding(.horizontal, 30)
            }
                .edgesIgnoringSafeArea(.all)
            
        }
            .frame(height: 60)
    }
}
