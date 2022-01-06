//
//  FixViewModel.swift
//  HandyMan
//
//  Created by Gary Weng on 1/1/22.
//

import SwiftUI

let fixImageText: [FixViewModel] = [
    FixViewModel.init(title: "墙面维修", serviceImage: "qianmianweixiu", destination: "wallFix"),
    FixViewModel.init(title: "管道疏通", serviceImage: "guandaoshutong", destination: "tubeFix"),
    FixViewModel.init(title: "地面维修", serviceImage: "dimianweixiu", destination: "groundFix"),
    FixViewModel.init(title: "门窗维修", serviceImage: "menchuangweixiu", destination: "doorWindowFix"),
    FixViewModel.init(title: "防水治漏", serviceImage: "loushui", destination: "leakingFix"),
    FixViewModel.init(title: "其他维修", serviceImage: "other", destination: "otherFix")
]

struct FixViewModel: Codable, Hashable {
    var title: String
    var serviceImage: String
    var destination: String
    
}

