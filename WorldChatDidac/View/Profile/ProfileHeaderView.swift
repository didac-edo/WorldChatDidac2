//
//  ProfileHeaderView.swift
//  InstagramSwiftUITutorial
//
//  Created by Dídac Edo Gibert on 14/4/21.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                KFImage(URL(string: viewModel.user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)

                Spacer()
                
                HStack(spacing: 16) {
                    
                    UserStateView(value: viewModel.user.stats?.Publicaciones ?? 0, title: "Publicaciones")
                    UserStateView(value: viewModel.user.stats?.Seguidores ?? 0, title: "Seguidores")
                    UserStateView(value: viewModel.user.stats?.Siguiendo ?? 0, title: "Siguiendo")
                }.padding(.trailing, 32)
            }
            
            Text(viewModel.user.fullname)
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            
            if let bio = viewModel.user.bio {
                Text(bio)
                    .font(.system(size: 15))
                    .padding(.leading)
                    .padding(.top, 1)
            }
            
            HStack {
                Spacer()
                
                ProfileActionButtonView(viewModel: viewModel)
                
                Spacer()
            }.padding(.top)
        }
    }
}
