//
//  RefreshNewViewModel.swift
//  HandyMan
//
//  Created by Gary Weng on 1/1/22.
//

import SwiftUI


let refreshImageText: [RefreshNewViewModel] = [
    RefreshNewViewModel.init(title: "墙面翻新", serviceImage: "qiangmianfanxin"),
    RefreshNewViewModel.init(title: "天花板翻新", serviceImage: "painting"),
    RefreshNewViewModel.init(title: "地面翻新", serviceImage: "dimianfanxin"),
    RefreshNewViewModel.init(title: "门面翻新", serviceImage: "menmianfanxin"),
    RefreshNewViewModel.init(title: "其他翻新", serviceImage: "other"),
]

struct RefreshNewViewModel: Codable, Hashable {
        var title: String
        var serviceImage: String
}

