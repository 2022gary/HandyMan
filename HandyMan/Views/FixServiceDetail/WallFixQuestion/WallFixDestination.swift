//
//  WallFixDestination.swift
//  HandyMan
//
//  Created by Gary Weng on 1/22/22.
//

import SwiftUI

struct WallFixDestination: View {
    var progressPercent: Double
    var pages: Double
    var title: String
    var body: some View {
        if(progressPercent == 0) {
            WallFixView()
                .navigationBarItems(trailing: Group{
                    NavigationLink(destination: ContentView()) {
                        Text("主页")
                    }
                })
               
        } else if(progressPercent == pages*1) {
            WallFixQ1(progressPercent:progressPercent, pages:pages, title:title)
                .navigationBarItems(trailing: Group{
                    NavigationLink(destination: ContentView()) {
                        Text("主页")
                    }.navigationBarBackButtonHidden(true)
                })
                
        } else if(progressPercent == pages*2) {
            WallFixQ2(progressPercent:progressPercent, pages:pages, title:title)
                .navigationBarItems(trailing: Group{
                    NavigationLink(destination: ContentView()) {
                        Text("主页")
                    }
                })
              
        }
    }
    
}


