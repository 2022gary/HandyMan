//
//  MinePage.swift
//  HandyMan
//
//  Created by Gary Weng on 12/16/21.
//

import SwiftUI

struct MinePage: View {
    
    @State var isLogined: Bool = true
    @State var allowedNotification: Bool = true
    
    var body: some View {
        
        VStack {
            
            if !isLogined{
                Image("default_profile")
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .cornerRadius(50)
                    .padding(.bottom, 50)
                NavigationLink(destination:
                                LoginSignupView()
                ){
                    Text("请登入您的账户")
                        .padding(4.0)
                        .font(.system(size: 25))
                }
            }else{
                HStack {
                    Image("default_profile")
                        .cornerRadius(50)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Account Name")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("718-443-8793")
                            .foregroundColor(.secondary)
                            .font(.title3)
                    }
                    Spacer()
                }
                .padding()
                .padding(.bottom, 30)
                
    
                Divider()
                Toggle(isOn: $allowedNotification) {
                    Text("消息通知")
                }
                .padding()
                
                List(mineContents) { mineContent in
                    NavigationLink(destination: MinePageDetail(detail: mineContent.direction, name: mineContent.name)) {
                        HStack {
                            Image(systemName: mineContent.imageName)
                            Text(mineContent.name)
                        }
                    }
                    
                }
                .listStyle(.plain)
                
                Spacer()
                Divider()
                
                Button("退出登入") {
                    isLogined.toggle()
                }
                .font(.title3)
                .foregroundColor(.red)
                .padding()
            }
        }
    }
}
struct MinePage_Previews: PreviewProvider {
    static var previews: some View {
            MinePage()
    }
}
