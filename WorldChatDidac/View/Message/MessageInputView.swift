//
//  MessageInputView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 2/5/21.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    
    var action: () -> Void
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color(.separator))
                .frame(width: UIScreen.main.bounds.width, height: 0.75)
                .padding(.bottom, 8)
            
            HStack {
                TextField("Message...", text: $messageText)
                    .textFieldStyle(PlainTextFieldStyle())
                    .frame(minHeight: 30)
                
                Button(action: action) {
                    Text("Send")
                        .bold()
                        .foregroundColor(.blue)
                }
            }
            .padding(.horizontal)
        }
    }
}
