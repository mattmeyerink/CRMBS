//
//  CrmbActionBar.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/5/23.
//

import SwiftUI

struct CrmbActionBar: View {
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "square.and.pencil")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                
                Text("Edit")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .regular))
                    .padding(.bottom, 10)
            }
            
            VStack {
                Image(systemName: "trash.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                
                Text("Delete")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .regular))
                    .padding(.bottom, 10)
            }
            
            VStack {
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                
                Text("Share")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .regular))
                    .padding(.bottom, 10)
            }
        }
        
        .background(Color.black)
        .cornerRadius(15)
    }
}
