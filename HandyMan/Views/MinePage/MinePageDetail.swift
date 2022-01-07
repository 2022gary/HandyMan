//
//  MinePageDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/6/22.
//

import SwiftUI

struct MinePageDetail: View {
    let detail: String
    var body: some View {
        if(detail == "myInfo") {
            MyInfoView()
        } else if(detail == "histOrder") {
            HistOrderView()
        } else if(detail == "rating") {
            RatingView()
        } else if(detail == "contact") {
            ContactView()
        }
    }
}


