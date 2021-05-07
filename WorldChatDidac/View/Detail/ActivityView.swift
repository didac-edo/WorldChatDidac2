//
//  ActivityView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 24/4/21.
//

import SwiftUI

struct ActivityView: View {
    let activity: Activity
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .bottomLeading) {

                Image(activity.imageName)
                    .resizable()
                    .frame(height: 200)

                HStack {
                    Text(activity.title)
                        .font(.system(size: 30, weight: .semibold))
                    Spacer()
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
            
            VStack(alignment: .leading, spacing: 20) {
                
                InfoItemView(title: "ADDRESS", description: activity.address)
                
                HStack {
                    Spacer()
                }
            }
            .padding()
            .background(Color.white)
        }
        .cornerRadius(15)
    }
}

