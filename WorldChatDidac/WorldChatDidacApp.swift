//
//  WorldChatDidacApp.swift
//  WorldChatDidac
//
//  Created by Dídac Edo Gibert on 14/4/21.
//

import SwiftUI
import Firebase

@main
struct WorldChatDidacApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
