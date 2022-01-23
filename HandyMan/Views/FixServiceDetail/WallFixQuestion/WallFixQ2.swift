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
        ScrollView {
            ProgressView("",value: progressPercent, total: 100)
            Text(String(progressPercent))
            LastNextPage(progressPercent: progressPercent, pages: pages, title:title)
        }
        
    }
}

