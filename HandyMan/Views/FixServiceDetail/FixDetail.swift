//
//  WallFixDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/5/22.
//

import SwiftUI

struct FixDetail: View {
    let detail: String
    let name: String
    var body: some View {
        if(detail == "wallFix") {
            WallFixView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "tubeFix") {
            TubeFixView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "groundFix") {
            GroundFixView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "doorWindowFix") {
            DoorWindowFixView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "leakingFix") {
            LeakingFixView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else {
            OtherFixView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        }
    }
  
}
