//
//  FeedView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 14/4/21.
//

import SwiftUI

struct PublicationView: View {
    @ObservedObject var viewModel = PublicationViewModel()
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 32) {
                ForEach(viewModel.posts) { post in
                    PublicationCell(viewModel: PublicationCellViewModel(post: post))
                }
            }
            .padding(.top)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        PublicationView()
    }
}
