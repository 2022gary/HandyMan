//
//  WallFixView.swift
//  HandyMan
//
//  Created by Gary Weng on 1/6/22.
//

import SwiftUI

struct WallFixView: View {
    @State var progressPercent:Double = 0.0
    @State var changePage: Bool = false
    @State private var zipcode: String = ""
    private var title:String = "墙面维修"
    private var pages:Double = 100/2
    var body: some View {
        
        VStack {
            ProgressView ("", value: progressPercent , total: 100)
            Spacer()
            
            Text("Please answer following questions, so we can serve you better!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
                
                .multilineTextAlignment(.center)
                
//            Text(String(progressPercent))
            Spacer()
            Divider()
                .padding(.bottom)
            LastNextPage(progressPercent: progressPercent, pages: pages, title:title)
        }
    }
}


struct WallFixView_Previews: PreviewProvider {
    static var previews: some View {
        WallFixView()
    }
}
