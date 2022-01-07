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
    var direction: String
    var imageName: String {return labelName}
   
}

let mineContents = [
    MineContentViewModel(name: "我的资料", labelName: "info.circle.fill", direction: "myInfo"),
    MineContentViewModel(name: "历史订单", labelName: "list.bullet.circle.fill", direction: "histOrder"),
    MineContentViewModel(name: "我的评论", labelName: "star.fill", direction: "rating"),
    MineContentViewModel(name: "联系我们", labelName: "phone.circle.fill", direction: "contact")
]
