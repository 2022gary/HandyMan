//
//  Keyboard.swift
//  HandyMan
//
//  Created by Gary Weng on 1/4/22.
//
import Foundation
import SwiftUI

struct Keyboard: ViewModifier {
    @State var offset : CGFloat = 0
    func body(content: Content) -> some View {
        content.padding(.bottom, offset).onAppear {
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (notification) in
                let value = notification.userInfo? [UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                let height = value.height
                self.offset = height
                
            }
            
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (notification) in
               
                self.offset = 0
                
            }
        }
    }
}

