//
//  HomeNavView.swift
//  HandyMan
//
//  Created by Gary Weng on 12/19/21.
//

import SwiftUI

struct HomeNavView: View {
    @State var index = 0
    private var numberOfImages = 3
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    var body: some View {
        GeometryReader {proxy in
            VStack {
                TabView(selection: $index) {
                    ForEach(0..<numberOfImages) {num in
                        Image("slide\(num)")
                            .resizable()
                            .frame(height: 230)
                            .tag(num)
                    }
                }
                .frame(maxWidth: .infinity)
                .tabViewStyle(PageTabViewStyle())
                .onReceive(timer, perform: { _ in
                    withAnimation {
                        index = (index+1) % numberOfImages
                    }
                    })
                HStack {
                    ServiceNavbtn(tab: .all)
                    ServiceNavbtn(tab: .fix)
                    ServiceNavbtn(tab: .installation)
                    ServiceNavbtn(tab: .refreshNew)
                }
               
                
            }
    
        }
    }
}

enum ServiceNavTab: String {
    case all = "全部"
    case fix = "维修"
    case installation = "安装"
    case refreshNew = "刷新"
}

struct ServiceNavbtn: View {
    
    @EnvironmentObject var homeVM : HomeViewModel
    
    var tab: ServiceNavTab
    
    var body: some View {
        Button {
            withAnimation {
                homeVM.currHomeNavTab = tab
            }
        } label: {
            Text(tab.rawValue)
                .font(.system(size: 20, weight: homeVM.currHomeNavTab == tab ? .bold : .medium))
                .foregroundColor(Color.black.opacity(homeVM.currHomeNavTab == tab ? 0.7 : 0.3))
                .padding(.horizontal, 16)
                .scaleEffect(homeVM.currHomeNavTab == tab ? 1.3 : 1)
        }
    }
    
    
}
