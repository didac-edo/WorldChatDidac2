//
//  PlaceCardView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 24/4/21.
//

import SwiftUI

struct PlaceCardView: View {
    let place: Place
            
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .bottomLeading) {
                Image(place.imageName)
                    .resizable()
                    .frame(height: 300)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(place.name)
                        .font(.system(size: 44, weight: .bold))
                }
                .foregroundColor(.white)
                .padding()
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.4), Color.black.opacity(0.01)]),
                        startPoint: .bottom,
                        endPoint: .top)
                    )
            }
            
            HStack { Spacer() }
            .padding()
            .background(Color.white)
        }
        .cornerRadius(20)
    }
}
