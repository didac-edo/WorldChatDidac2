//
//  Extensions.swift
//  InstagramSwiftUITutorial
//
//  Created by Dídac Edo Gibert on 14/4/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

