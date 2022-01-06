//
//  FreshDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/5/22.
//

import SwiftUI

struct FreshDetail: View {
    let detail: String
    var body: some View {
        if(detail == "wallFresh") {
            WallFixView()
        } else if(detail == "ceilingFresh") {
            CeilingFreshView()
        } else if(detail == "groundFresh") {
            GroundFreshView()
        } else if(detail == "doorFresh") {
            DoorFreshView()
        } else {
            OtherFreshView()
        }
    }
  
}


