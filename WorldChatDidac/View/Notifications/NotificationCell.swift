//
//  NotificationCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Dídac Edo Gibert on 15/4/21.
//

import SwiftUI
import Kingfisher

struct NotificationCell: View {
    @State private var showPostImage = true
    var body: some View {
        HStack {
            Image("didac1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("didac.edo")
                .font(.system(size: 14, weight: .semibold)) + Text(" liked one of your posts.")
                .font(.system(size: 15))
            
            Spacer()
            
            if showPostImage {
                Image("didac1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .padding(.top, 15)
            } else {
                Button(action: {}, label: {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
        }.padding(.horizontal)
    }
}
