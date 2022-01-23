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
                        .font(.headline)
                        .padding(.vertical, 10)
                        .padding(.horizontal,60)
                }
            }
            if(progressPercent != 0 && progressPercent <= 100) {
                Button {
                    progressPercent -= pages;
                    self.changePage = true;
                } label: {
                    Text("上一页")
                        .font(.headline)
                        .padding(.vertical, 10)
                        .padding(.horizontal,60)
//                        .background(Color.green.cornerRadius(10))
                }
            }
            if(progressPercent != 100 && progressPercent >= 0 ) {
                Button {
                    progressPercent += pages;
                    self.changePage = true;
                } label: {
                    Text("下一页")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.vertical, 10)
                        .padding(.horizontal,60)
                        .background(Color.green.cornerRadius(5))
                }

            }
            if(progressPercent == 100) {
                NavigationLink(destination:OrderPage()) {
                    Text("提交订单")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.vertical, 10)
                        .padding(.horizontal,60)
                        .background(Color.pink.cornerRadius(5))
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


struct LastNextPage_Preview: PreviewProvider {
    static var previews: some View{
        LastNextPage(progressPercent: 20, pages: 1.0, title: "ok")
    }
}
