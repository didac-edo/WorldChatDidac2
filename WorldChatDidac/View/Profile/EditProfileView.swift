//
//  EditProfileView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 25/4/21.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bioText: String
    @ObservedObject private var viewModel: EditProfileViewModel
    @Binding var user: User
    @Environment(\.presentationMode) var mode
    
    init(user: Binding<User>) {
        self._user = user
        self.viewModel = EditProfileViewModel(user: self._user.wrappedValue)
        self._bioText = State(initialValue: _user.wrappedValue.bio ?? "")
    }
    
    var body: some View {
        VStack {
            HStack {
                Button(action: { mode.wrappedValue.dismiss() }, label: {
                    Text("Cancelar")
                })
                
                Spacer()
                
                Button(action: { viewModel.saveUserBio(bioText) }, label: {
                    Text("Hecho").bold()
                })
            }.padding()
            
            TextArea(text: $bioText, placeholder: "Añade tu bio...")
                .frame(width: 370, height: 200)
                .padding()
            
            Spacer()
        }
        .onReceive(viewModel.$uploadComplete, perform: { completed in
            if completed {
                self.mode.wrappedValue.dismiss()
                self.user.bio = viewModel.user.bio
            }
        })
    }
}
