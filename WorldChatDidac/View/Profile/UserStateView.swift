//
//  UserStateView.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 15/4/21.
//

import SwiftUI

struct UserStateView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.system(size: 15, weight: .semibold))
            
            Text(title)
                .font(.system(size: 15))
        }.frame(width: 80, alignment: .center)
    }
}

struct UserStateView_Previews: PreviewProvider {
    static var previews: some View {
        UserStateView(value: 1, title: "Post")
    }
}
