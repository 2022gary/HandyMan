//
//  WallFixDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/5/22.
//

import SwiftUI

struct WallFixDetail: View {
    @State var serviceName: String
    var body: some View {
        if(self.serviceName == "墙面维修") {
            WallFixPage()
        }
        
    }
}

struct WallFixPage: View {
    
    var body: some View {
        Text("123")
    }
}
