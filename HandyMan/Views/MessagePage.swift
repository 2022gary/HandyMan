//
//  MessagePage.swift
//  HandyMan
//
//  Created by Gary Weng on 12/16/21.
//

import SwiftUI

struct MessagePage: View {
   
    @State var message: String = ""
    @ObservedObject private var kGurdian = KeyboardGuardian(textFieldCount: 1)
    @State private var name = Array<String>.init(repeating:"", count: 1)
    var body: some View {
        VStack {
                ZStack {
                    VStack(spacing: 5) {
                        Text("customer")
                            .fontWeight(.bold)
                        Text("Active")
                            .font(.caption)
                    }
                    .foregroundColor(.black)
                }
                .padding(.all)
                
                VStack {
                    Spacer()
                    
                    HStack(spacing: 15) {
                        HStack(spacing: 15) {
                            
                            TextField("Message", text: $name[0], onEditingChanged: { if $0 {self.kGurdian.showField = 1}})
                                .background(GeometryGetter(rect: $kGurdian.rects[0]))
                            
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "paperclip.circle.fill")
                                    .font(.system(size: 22))
                                    .foregroundColor(.gray)
                            })
                        }
                        .padding(.vertical, 12)
                        .padding(.horizontal)
                        .background(Color.black.opacity(0.06))
                        .clipShape(Capsule())
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "paperplane.fill")
                                .font(.system(size: 22))
                                .rotationEffect(.init(degrees: 45))
                                .padding(.vertical, 12)
                                .padding(.leading, 12)
                                .padding(.trailing, 17)
                                .background(Color.black.opacity(0.07))
                                .clipShape(Circle())
                        })
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            }
            .edgesIgnoringSafeArea(.bottom)
            .background(Color(.white).edgesIgnoringSafeArea(.top))

    }
}
struct MessagePage_Previews: PreviewProvider {
    static var previews: some View {
        MessagePage()
    }
}
