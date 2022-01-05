//
//  MineContentViewModel.swift
//  HandyMan
//
//  Created by Gary Weng on 12/31/21.
//

import SwiftUI

struct MineContentViewModel: Identifiable {
    var id = UUID()
    var name: String
    var labelName: String
    
    var imageName: String {return labelName}
   
}

let mineContents = [
    MineContentViewModel(name: "我的资料", labelName: "information"),
    MineContentViewModel(name: "历史订单", labelName: "historicalOrder"),
    MineContentViewModel(name: "我的评论", labelName: "rating")
]
