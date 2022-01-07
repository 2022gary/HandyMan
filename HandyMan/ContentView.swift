//
//  ContentView.swift
//  HandyMan
//
//  Created by Gary Weng on 12/15/21.
//

import SwiftUI

struct ContentView: View {
    @State private var currTab = 0
    var body: some View {
        NavigationView {
            GeometryReader {geometry in
                ZStack(alignment: .bottomLeading) {
                    tabView
                        .navigationBarTitle(navigationTitle, displayMode: .inline)
                        .navigationBarItems(trailing: Group{
                            if(currTab == 0) {
                                NavigationLink(destination: LoginSignupView()) {
                                    Text("登入")
                                }
                                
                            }
                        })
                       
                }
            }
        }
    }
    private var tabView: some View {
        TabView(selection: $currTab) {
            HomePage()
                .tabItem {
                    if(currTab == 0) {
                        Image(systemName: "house.circle.fill")
                    } else {
                        Image(systemName: "house.circle")
                    }
                    Text("首页")
                        .font(.system(size: 10))
                }.tag(0)
               
            OrderPage()
                .tabItem {
                    if(currTab == 1) {
                        Image(systemName: "newspaper.fill")
                    } else {
                        Image(systemName: "newspaper")
                    }
                    Text("订单")
                        .font(.system(size: 10))
                }.tag(1)
            ChatingListPage()
                .tabItem {
                    if(currTab == 2) {
                        Image(systemName: "message.fill")
                    } else {
                        Image(systemName: "message")
                    }
                    Text("消息")
                        .font(.system(size: 10))
                }.tag(2)
            MinePage()
                .tabItem {
                    if(currTab == 3) {
                        Image(systemName: "person.fill")
                    } else {
                        Image(systemName: "person")
                    }
                    Text("我的")
                        .font(.system(size: 10))
                }.tag(3)
        }
    }
    
    private var navigationTitle: String {
        switch self.currTab {
        case 0:
            return "汉迪曼"
        case 1:
            return "待服务订单"
        case 2:
            return "订单咨询"
        case 3:
            return "个人资料"
        default:
            return ""
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

