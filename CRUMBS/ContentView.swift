//
//  ContentView.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.1, green: 0.1, blue: 0.1)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                
                ButtonView()
                
                Spacer()
                
                NavigationBar()
            }
        }
    }
}
