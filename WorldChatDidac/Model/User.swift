//
//  User.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 19/4/21.
//

import FirebaseFirestoreSwift
import Foundation

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    var bio: String?
    var stats: UserStats?
    var isFollowed: Bool? = false
    
    var isCurrentUser: Bool {
        return AuthViewModel.shared.userSession?.uid == id
    }
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["uid"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.stats = UserStats(Siguiendo: 0, Publicaciones: 0, Seguidores: 0)
        self.bio = dictionary["bio"] as? String ?? ""
    }
}

struct UserStats: Decodable {
    var Siguiendo: Int
    var Publicaciones: Int
    var Seguidores: Int
}

