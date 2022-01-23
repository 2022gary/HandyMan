//
//  WallFixQ2.swift
//  HandyMan
//
//  Created by Gary Weng on 1/18/22.
//

import SwiftUI

struct WallFixQ2: View {
    @State var progressPercent:Double
    @State var pages:Double
    @State var title:String
    @State var changePage: Bool = false
    var body: some View {
       VStack{
            ProgressView("",value: progressPercent, total: 100)
//            Text("2nd q\(String(progressPercent))")
            Spacer()
            
            Text("2. 你想要油漆什么鬼?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
                .multilineTextAlignment(.center)
            
            
            Spacer()
            Divider()
                .padding(.bottom)
            LastNextPage(progressPercent: progressPercent, pages: pages, title:title)
        }
        
    }
}

