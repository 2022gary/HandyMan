//
//  FixViewModel.swift
//  HandyMan
//
//  Created by Gary Weng on 1/1/22.
//

import SwiftUI

let fixImageText: [FixViewModel] = [
    FixViewModel.init(title: "墙面维修", serviceImage: "qianmianweixiu"),
    FixViewModel.init(title: "管道疏通", serviceImage: "guandaoshutong"),
    FixViewModel.init(title: "地面维修", serviceImage: "dimianweixiu"),
    FixViewModel.init(title: "门窗维修", serviceImage: "menchuangweixiu"),
    FixViewModel.init(title: "防水治漏", serviceImage: "loushui"),
    FixViewModel.init(title: "其他维修", serviceImage: "other")
]

struct FixViewModel: Codable, Hashable {
    var title: String
    var serviceImage: String
   
    
}

