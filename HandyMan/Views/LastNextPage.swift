//
//  LastNextPage.swift
//  HandyMan
//
//  Created by Gary Weng on 1/22/22.
//

import SwiftUI

struct LastNextPage: View {
    @State var progressPercent:Double
    @State var pages:Double
    @State var title:String
    @State var changePage: Bool = false
    var body: some View {
        HStack {
            if(progressPercent == 0) {
                NavigationLink(destination:ContentView()) {
                    Text("主页")
                }
            }
            if(progressPercent != 0 && progressPercent <= 100) {
                Button("上一页") {
                    progressPercent -= pages;
                    self.changePage = true;
                    
                }
            }
            if(progressPercent != 100 && progressPercent >= 0 ) {
                Button("下一页") {
                    progressPercent += pages;
                    self.changePage = true;
                }
            }
            if(progressPercent == 100) {
                NavigationLink(destination:ContentView()) {
                    Text("提交订单")
                }
        }
        NavigationLink(destination: WallFixDestination(progressPercent: progressPercent, pages:pages, title:title), isActive: self.$changePage) {
            EmptyView()
        }
        .disabled(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle(Text(title), displayMode: .inline)
        }
    }
}


