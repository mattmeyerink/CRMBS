//
//  ContentView.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 12/23/22.
//

import SwiftUI

enum Views {
    case buttonView
    case mapView
    case listView
    case statView
}

struct ContentView: View {
    @State var currentView: Views = .buttonView
    
    var body: some View {
        ZStack {
            Color(red: 0.1, green: 0.1, blue: 0.1)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                
                if (currentView == .buttonView) {
                    ButtonView()
                }
                
                if (currentView == .mapView) {
                    MapView()
                }
                
                if (currentView == .listView) {
                    ListView()
                }
                
                if (currentView == .statView) {
                    StatView()
                }
                
                Spacer()
                
                NavigationBar(
                    navigateToView: navigateToView
                )
            }
        }
    }
    
    func navigateToView(newView: Views) -> Void {
        if (currentView != newView) {
            currentView = newView
        }
    }
}




