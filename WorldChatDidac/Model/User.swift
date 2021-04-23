//
//  User.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 19/4/21.
//

import FirebaseFirestoreSwift

struct User: Identifiable ,Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    var isFollowed: Bool? = false
    
    var isCurrentUser: Bool {
        return AuthViewModel.shared.userSession?.uid == id
    }
}
