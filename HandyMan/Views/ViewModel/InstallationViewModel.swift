//
//  InstallationViewModel.swift
//  HandyMan
//
//  Created by Gary Weng on 1/1/22.
//

import SwiftUI

let installationImageText: [InstallationViewModel] = [
    InstallationViewModel.init(title: "灯具安装", serviceImage: "dengjuanzhuang", destination: "lightingInstall"),
    InstallationViewModel.init(title: "门锁安装", serviceImage: "mensuo", destination: "doorLockInstall"),
    InstallationViewModel.init(title: "墙面安装", serviceImage: "qiangmiananzhuang", destination: "wallInstall"),
    InstallationViewModel.init(title: "地面安装", serviceImage: "dimiananzhuang", destination: "floorInstall"),
    InstallationViewModel.init(title: "家具安装", serviceImage: "jiajuanzhuang", destination: "furnitureInstall"),
    InstallationViewModel.init(title: "其他安装", serviceImage: "other", destination: "otherInstall")
]

struct InstallationViewModel: Codable, Hashable {
    var title: String
    var serviceImage: String
    var destination: String
}

