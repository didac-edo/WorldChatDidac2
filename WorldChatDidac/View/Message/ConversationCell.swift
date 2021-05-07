//
//  ConversationCell.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 1/5/21.
//

import Kingfisher
import SwiftUI


struct ConversationCell: View {
    let message: Message
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12) {
                KFImage(URL(string: message.user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
            
            
                VStack(alignment: .leading, spacing: 4) {
                    Text(message.user.username)
                        .font(.system(size: 14, weight: .semibold))
                    
                    
                    Text(message.text)
                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                .foregroundColor(.black)
                .padding(.trailing)
                
                Spacer()
            }
            
            Divider()
        }
    }
}
