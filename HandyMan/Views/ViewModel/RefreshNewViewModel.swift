//
//  RefreshNewViewModel.swift
//  HandyMan
//
//  Created by Gary Weng on 1/1/22.
//

import SwiftUI


let refreshImageText: [RefreshNewViewModel] = [
    RefreshNewViewModel.init(title: "墙面翻新", serviceImage: "qiangmianfanxin", destination: "wallFresh"),
    RefreshNewViewModel.init(title: "天花板翻新", serviceImage: "painting", destination: "ceilingFresh"),
    RefreshNewViewModel.init(title: "地面翻新", serviceImage: "dimianfanxin", destination: "groundFresh"),
    RefreshNewViewModel.init(title: "门面翻新", serviceImage: "menmianfanxin", destination: "doorFresh"),
    RefreshNewViewModel.init(title: "其他翻新", serviceImage: "other", destination: "OtherFresh"),
]

struct RefreshNewViewModel: Codable, Hashable {
    var title: String
    var serviceImage: String
    var destination: String
}

