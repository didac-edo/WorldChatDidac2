//
//  LazyView.swift
//  InstagramSwiftUITutorial
//
//  Created by Dídac Edo Gibert on 14/4/21.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
