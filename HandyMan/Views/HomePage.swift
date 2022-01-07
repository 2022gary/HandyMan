//
//  HomePage.swift
//  HandyMan
//
//  Created by Gary Weng on 12/16/21.
//

import SwiftUI

struct HomePage: View {
    @StateObject var homeVM: HomeViewModel = HomeViewModel()
    var body: some View {
        GeometryReader {proxy in
            VStack {
                HomeNavView()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .environmentObject(homeVM)
                ScrollView(.horizontal, showsIndicators: false) {
                    TabView(selection: $homeVM.currHomeNavTab) {
                        AllService()
                            .padding(.top,20)
                            .tag(ServiceNavTab.all)
                        FixView()
                            .frame(maxWidth:.infinity)
                            .tag(ServiceNavTab.fix)
                        InstallationView()
                            .frame(maxWidth:.infinity)
                            .tag(ServiceNavTab.installation)
                        RefreshNew()
                            .frame(maxWidth:.infinity)
                            .tag(ServiceNavTab.refreshNew)
                    }
                    .frame(width: proxy.size.width, alignment: .top)
                    .tabViewStyle(.page(indexDisplayMode: .never))
        
                   
                }
            
            }
            .frame(maxHeight: .infinity, alignment: .top)
           
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}


