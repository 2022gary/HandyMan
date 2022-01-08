//
//  FreshDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/5/22.
//

import SwiftUI

struct FreshDetail: View {
    let detail: String
    let name: String
    var body: some View {
        if(detail == "wallFresh") {
            WallFixView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "ceilingFresh") {
            CeilingFreshView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "groundFresh") {
            GroundFreshView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "doorFresh") {
            DoorFreshView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else {
            OtherFreshView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        }
    }
  
}


