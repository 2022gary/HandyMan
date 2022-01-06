//
//  WallFixDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/5/22.
//

import SwiftUI

struct FixDetail: View {
    let detail: String
    var body: some View {
        if(detail == "wallFix") {
            WallFixView()
        } else if(detail == "tubeFix") {
            TubeFixView()
        } else if(detail == "groundFix") {
            GroundFixView()
        } else if(detail == "doorWindowFix") {
            DoorWindowFixView()
        } else if(detail == "leakingFix") {
            LeakingFixView()
        } else {
            OtherFixView()
        }
    }
  
}
