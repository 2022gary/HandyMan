//
//  InstallationViewModel.swift
//  HandyMan
//
//  Created by Gary Weng on 1/1/22.
//

import SwiftUI

let installationImageText: [InstallationViewModel] = [
    InstallationViewModel.init(title: "灯具安装", serviceImage: "dengjuanzhuang"),
    InstallationViewModel.init(title: "门锁安装", serviceImage: "mensuo"),
    InstallationViewModel.init(title: "墙面安装", serviceImage: "qiangmiananzhuang"),
    InstallationViewModel.init(title: "地面安装", serviceImage: "dimiananzhuang"),
    InstallationViewModel.init(title: "家具安装", serviceImage: "jiajuanzhuang"),
    InstallationViewModel.init(title: "其他安装", serviceImage: "other")
]

struct InstallationViewModel: Codable, Hashable {
    var title: String
    var serviceImage: String
}

