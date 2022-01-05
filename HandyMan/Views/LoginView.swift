//
//  LoginView.swift
//  HandyMan
//
//  Created by Gary Weng on 12/17/21.
//

import SwiftUI

struct LoginView: View {
    @State var signButtonClick = false;
    var body: some View {
            if signButtonClick {
                LoginView()
            }
        VStack {
            HStack {
                Button {
                    self.signButtonClick = true;
                } label: {
                    Image(systemName: "xmark")
                }
                Spacer()
                
                Button {
                    
                } label: {
                    Text("更多")
                }
            }
            .padding(.horizontal,16)
            .font(.system(size: 18))
            .foregroundColor(.black)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
