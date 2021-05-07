//
//  PlaceDetailView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 24/4/21.
//

import SwiftUI

struct PlaceDetailView: View {
    @ObservedObject var placeFinder: PlaceFinder
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.5))
                .ignoresSafeArea()
            VStack {
                
                TopNavigationView(placeFinder: placeFinder)
                ScrollView(.vertical, showsIndicators: false) {
                    
                    ForEach(placeFinder.selectedPlace?.activities ?? []) { activity in
                        ActivityView(activity: activity)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
