//
//  MinePage.swift
//  HandyMan
//
//  Created by Gary Weng on 12/16/21.
//

import SwiftUI

struct MinePage: View {
    var body: some View {
        
        VStack {
            HStack {
                    Image("default_profile")
                        .cornerRadius(50)
                    Text("请登入您的账户")
                        .padding(4.0)
                        .font(.system(size: 25))
            }
            Divider()
            List(mineContents) { mineContent in
                HStack {
                    Image(mineContent.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text(mineContent.name)
                        .font(.system(size: 25))
                }
                
            }.listStyle(.plain)
        }
            
       
    }
}
struct MinePage_Previews: PreviewProvider {
    static var previews: some View {
            MinePage()
    }
}
