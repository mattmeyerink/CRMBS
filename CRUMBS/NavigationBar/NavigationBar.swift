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
                Text("Hello From the Navigation Bar!")
            }
                .edgesIgnoringSafeArea(.all)
            
        }
        .frame(height: 50)
    }
}
