//
//  ContactView.swift
//  HandyMan
//
//  Created by Gary Weng on 1/6/22.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                    Text("汉迪曼")
                        .font(.largeTitle)
                        .padding(.bottom)
                    Text("提供最优质的维修,安装,翻新服务")
                        .foregroundColor(.gray)
                }.padding()
                
                Spacer()
                Image(systemName: "applelogo")
                    .frame(width: 50, height: 50)
                    .padding()
                
            }
            Divider()
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "timer")
                    Text("Customer Service: \n  7/Week    9:00 AM - 5:30 PM")
                        .font(.system(size: 23))
                }.padding()
                HStack {
                    Image(systemName: "iphone.homebutton")
                    Text("Tel: xxx-xxx-xxxx")
                        .font(.system(size: 23))
                }.padding()
            }.border(Color.black)
            
            
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
