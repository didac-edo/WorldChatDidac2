//
//  TopNavigationView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 24/4/21.
//

import SwiftUI

struct TopNavigationView: View {
    @ObservedObject var placeFinder: PlaceFinder
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation { placeFinder.selectedPlace = nil }
            }, label: {
                Image(systemName: "arrow.left")
                    .padding()
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            Text(placeFinder.selectedPlace?.name ?? "")
                .font(.system(size: 20, weight: .bold))
            
            Spacer()
            Spacer()
        }
    }
}
